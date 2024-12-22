from typing import Annotated

from asyncpg import PostgresError
from fastapi import Form, Request

from db import database
from models import Offre, OffreCreate
from routes import router
from routes.utils import error, success


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
