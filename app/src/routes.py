from typing import Annotated

from asyncpg import PostgresError
from fastapi import APIRouter, Form, Request
from fastapi.responses import HTMLResponse

from config import templates
from db import database
from models import Candidat, CandidatCreate, Offre, OffreCreate

router = APIRouter()


def success(msg: str | None = None):
    res = dict(status="success")
    if msg:
        res["msg"] = msg
    return res


def error(msg: str | None = None):
    res = dict(status="error")
    if msg:
        res["msg"] = msg
    return res


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
            request=request, name="error.html", context=dict(msg=str(e))
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
            request=request, name="error.html", context=dict(msg=str(e))
        )


@router.post("/candidats", tags=["candidats"])
async def post_candidats(
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

        return success("Sucessfully added new candidat")
    except PostgresError as e:
        return error(str(e))


@router.put("/candidats/{id}", tags=["candidats"])
async def put_candidats(
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
            return error("Candidat adresse not found")

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
        return success("Candidat updated successfully")

    except PostgresError as e:
        return error(str(e))


@router.get("/offres", tags=["offres"])
async def get_offres(request: Request) -> list[Offre]:
    try:
        query = "SELECT * FROM View_Offre;"
        data = await database.fetch_all(query=query)
        return [dict(record) for record in data]

    except PostgresError as e:
        return error(str(e))


@router.post("/offres", tags=["offres"])
async def post_offres(data: Annotated[OffreCreate, Form()]):
    try:
        insert_full_query = """
        WITH inserted_adresse AS (
            INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
            VALUES (:latitude, :longitude, :rue, :ville, :npa, :pays)
            RETURNING id AS idadresse
        )
        INSERT INTO Offre (
            idadresse, descriptionoffre, nomposte, anneesexprequises,
            datepublication, datecloture
        )
        SELECT
            inserted_adresse.idadresse,
            :descriptionoffre,
            :nomposte,
            :anneesexprequises,
            :datepublication,
            :datecloture
        FROM inserted_adresse;
        """

        await database.execute(
            query=insert_full_query,
            values=data.dict(),
        )

        return success("Sucessfully added new offre")
    except PostgresError as e:
        return error(str(e))


@router.put("/offres/{id}", tags=["offres"])
async def put_offres(id: int, data: Annotated[OffreCreate, Form()]):
    try:
        # Retrieve the current idAdresse associated with the Offre
        get_idadresse_query = """
        SELECT idadresse
        FROM Offre
        WHERE id = :id;
        """

        res = await database.fetch_one(query=get_idadresse_query, values=dict(id=id))
        if not res:
            return error("Offre address not found")

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
        updated_offre AS (
            UPDATE Offre
            SET descriptionoffre = :descriptionoffre,
                nomposte = :nomposte,
                anneesexprequises = :anneesexprequises,
                datepublication = :datepublication,
                datecloture = :datecloture
            WHERE id = :id
            RETURNING id AS idoffre
        )
        UPDATE Offre
        SET idAdresse = updated_adresse.idadresse
        FROM updated_adresse, updated_offre
        WHERE Offre.id = :id;
        """

        await database.execute(
            query=update_full_query,
            values=dict(id=id, idadresse=idadresse, **data.dict()),
        )

        return {"status": "success", "message": "Offre updated successfully"}

    except PostgresError as e:
        return error(str(e))


@router.get("/interactions", tags=["interactions"])
async def get_interactions(request: Request):
    try:
        # TODO: Create views for each interaction type and make 3 queries here
        query = "SELECT * FROM interaction"
        data = await database.fetch_all(query=query)
        return [dict(record) for record in data]

    except PostgresError as e:
        return error(str(e))
