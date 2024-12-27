from typing import Annotated

from asyncpg import PostgresError
from fastapi import Form, Request
from fastapi.responses import HTMLResponse, RedirectResponse

from config import templates
from db import database
from models import CandidatCreate
from routes import router


@router.get("/")
async def home(request: Request) -> HTMLResponse:
    return templates.TemplateResponse(request=request, name="base.html")


@router.get("/candidats", tags=["candidats"])
async def get_candidats(request: Request) -> HTMLResponse:
    try:
        query = "SELECT * FROM View_Candidat;"
        data = await database.fetch_all(query=query)
        data = [dict(record) for record in data]
        return templates.TemplateResponse(
            request=request, name="candidats.html", context=dict(candidats=data)
        )

    except PostgresError as e:
        return templates.TemplateResponse(
            request=request, name="error.html", context=dict(error=str(e))
        )


@router.get("/candidats/{id}", tags=["candidats"])
async def get_candidats_detail(request: Request, id: int) -> HTMLResponse:
    try:
        query = "SELECT * FROM View_Candidat WHERE id = :id;"
        data = await database.fetch_one(query=query, values=dict(id=id))
        return templates.TemplateResponse(
            request=request, name="candidat.html", context=dict(candidat=dict(data))
        )

    except PostgresError as e:
        return templates.TemplateResponse(
            request=request, name="error.html", context=dict(error=str(e))
        )


@router.get("/candidat-new", tags=["candidats"])
async def get_candidats_new(request: Request) -> HTMLResponse:
    return templates.TemplateResponse(
        request=request,
        name="candidat-update.html",
        context=dict(method="post", candidat=None),
    )


@router.get("/candidat/{id}/edit", tags=["candidats"])
async def get_candidats_update(request: Request, id: int) -> HTMLResponse:
    try:
        query = "SELECT * FROM View_Candidat WHERE id = :id;"
        data = await database.fetch_one(query=query, values=dict(id=id))
        return templates.TemplateResponse(
            request=request,
            name="candidat-update.html",
            context=dict(method="put", candidat=dict(data)),
        )

    except PostgresError as e:
        return templates.TemplateResponse(
            request=request, name="error.html", context=dict(error=str(e))
        )

@router.get("/candidats_pour_offre/{idOffre}", tags=["candidats"])
async def get_candidats_pour_offre(request: Request, idOffre: int) -> HTMLResponse:
    try:
        query = "SELECT * FROM View_Candidat INNER JOIN Candidat_Offre ON View_Candidat.id = Candidat_Offre.idCandidat WHERE Candidat_Offre.idOffre = :idOffre;"
        data = await database.fetch_all(query=query, values = {"idOffre": idOffre})
        data = [dict(record) for record in data]
        return templates.TemplateResponse(
            request=request, name="candidats.html", context=dict(candidats=data)
        )

    except PostgresError as e:
        return templates.TemplateResponse(
            request=request, name="error.html", context=dict(error=str(e))
        )

@router.post("/candidats", tags=["candidats"])
async def post_candidats(
    request: Request,
    data: Annotated[CandidatCreate, Form()],
):
    try:
        insert_full_query = """
        WITH inserted_adresse AS (
            INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
            VALUES (:latitude, :longitude, :rue, :ville, :npa, :pays)
            RETURNING id AS idadresse
        ),
        inserted_personne AS (
            INSERT INTO Personne (nom, prenom, email)
            VALUES (:nom, :prenom, :email)
            RETURNING id AS idpersonne
        )
        INSERT INTO Candidat (
            idpersonne, age, genre, numerotel, anneesexp,
            idadresse
        )
        SELECT
            inserted_personne.idpersonne,
            :age,
            :genre,
            :numerotel,
            :anneesexp,
            inserted_adresse.idadresse
        FROM inserted_adresse, inserted_personne;
        """

        await database.execute(
            query=insert_full_query,
            values=data.dict(),
        )

        return RedirectResponse("/candidats", status_code=303)
    except PostgresError as e:
        return templates.TemplateResponse(
            request=request,
            name="candidat-update.html",
            context=dict(method="post", candidat=data, error=str(e)),
        )


@router.post("/candidats/{id}/edit", tags=["candidats"])
async def put_candidats(
    request: Request,
    id: int,
    data: Annotated[CandidatCreate, Form()],
):
    try:
        get_idadresse_query = """
        SELECT idadresse
        FROM Candidat
        WHERE idpersonne = :id;
        """

        res = await database.fetch_one(query=get_idadresse_query, values=dict(id=id))
        if not res:
            return templates.TemplateResponse(
                request=request,
                name="candidat-update.html",
                context=dict(
                    method="put", candidat=data, error="Candidat adresse not found"
                ),
            )

        idadresse = res["idadresse"]

        update_full_query = """
        WITH updated_adresse AS (
            UPDATE Adresse
            SET latitude = :latitude,
                longitude = :longitude,
                rue = :rue,
                ville = :ville,
                npa = :npa,
                pays = :pays
            WHERE id = :idadresse
            RETURNING id AS idadresse
        ),
        updated_personne AS (
            UPDATE Personne
            SET nom = :nom,
                prenom = :prenom,
                email = :email
            WHERE id = :id
            RETURNING id AS idpersonne
        )
        UPDATE Candidat
        SET age = :age,
            genre = :genre,
            numerotel = :numerotel,
            anneesexp = :anneesexp
        WHERE idpersonne = :id
        RETURNING idpersonne;
        """

        await database.execute(
            query=update_full_query,
            values=dict(id=id, idadresse=idadresse, **data.dict()),
        )
        return RedirectResponse("/candidats", status_code=303)

    except PostgresError as e:
        return templates.TemplateResponse(
            request=request,
            name="candidat-update.html",
            context=dict(method="put", candidat=data, error=str(e)),
        )
