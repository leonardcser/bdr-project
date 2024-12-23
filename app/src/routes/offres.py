from typing import Annotated

from asyncpg import PostgresError
from fastapi import Form, Request
from fastapi.responses import HTMLResponse, RedirectResponse

from config import templates
from db import database
from models import OffreCreate
from routes import router


@router.get("/offres", tags=["offres"])
async def get_offres(request: Request) -> HTMLResponse:
    try:
        query = "SELECT * FROM View_Offre;"
        data = await database.fetch_all(query=query)
        return templates.TemplateResponse(
            request=request, name="offres.html", context=dict(offres=data)
        )

    except PostgresError as e:
        return templates.TemplateResponse(
            request=request, name="error.html", context=dict(error=str(e))
        )


@router.get("/offres/{id}", tags=["offres"])
async def get_offres_detail(request: Request, id: int) -> HTMLResponse:
    try:
        query = "SELECT * FROM View_Offre WHERE id = :id;"
        data = await database.fetch_one(query=query, values=dict(id=id))
        return templates.TemplateResponse(
            request=request, name="offre.html", context=dict(offre=dict(data))
        )

    except PostgresError as e:
        return templates.TemplateResponse(
            request=request, name="error.html", context=dict(error=str(e))
        )


@router.get("/offre-new", tags=["offres"])
async def get_offres_new(request: Request) -> HTMLResponse:
    return templates.TemplateResponse(
        request=request,
        name="offre-update.html",
        context=dict(method="post", offre=None),
    )


@router.get("/offre/{id}/edit", tags=["offres"])
async def get_offres_update(request: Request, id: int) -> HTMLResponse:
    try:
        query = "SELECT * FROM View_Offre WHERE id = :id;"
        data = await database.fetch_one(query=query, values=dict(id=id))
        return templates.TemplateResponse(
            request=request,
            name="offre-update.html",
            context=dict(method="put", offre=dict(data)),
        )

    except PostgresError as e:
        return templates.TemplateResponse(
            request=request, name="error.html", context=dict(error=str(e))
        )


@router.post("/offres", tags=["offres"])
async def post_offres(request: Request, data: Annotated[OffreCreate, Form()]):
    try:
        insert_full_query = """
        WITH inserted_adresse AS (
            INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
            VALUES (:latitude, :longitude, :rue, :ville, :npa, :pays)
            RETURNING id AS idadresse
        )
        INSERT INTO Offre (
            idadresse, descriptionoffre, nomposte, anneesexprequises
        )
        SELECT
            inserted_adresse.idadresse,
            :descriptionoffre,
            :nomposte,
            :anneesexprequises
        FROM inserted_adresse;
        """

        await database.execute(
            query=insert_full_query,
            values=data.dict(),
        )

        return RedirectResponse("/offres", status_code=303)
    except PostgresError as e:
        return templates.TemplateResponse(
            request=request,
            name="offre-update.html",
            context=dict(method="post", offre=data, error=str(e)),
        )


@router.post("/offres/{id}/edit", tags=["offres"])
async def put_offres(request: Request, id: int, data: Annotated[OffreCreate, Form()]):
    try:
        # Retrieve the current idAdresse associated with the Offre
        get_idadresse_query = """
        SELECT idadresse
        FROM Offre
        WHERE id = :id;
        """

        res = await database.fetch_one(query=get_idadresse_query, values=dict(id=id))
        if not res:
            return templates.TemplateResponse(
                request=request,
                name="offre-update.html",
                context=dict(method="put", offre=data, error="offre adresse not found"),
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
        updated_offre AS (
            UPDATE Offre
            SET descriptionoffre = :descriptionoffre,
                nomposte = :nomposte,
                anneesexprequises = :anneesexprequises,
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
        return RedirectResponse("/offres", status_code=303)

    except PostgresError as e:
        return templates.TemplateResponse(
            request=request,
            name="offre-update.html",
            context=dict(method="put", offre=data, error=str(e)),
        )
