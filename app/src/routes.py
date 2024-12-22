import json
from datetime import date, datetime

from fastapi import APIRouter, Request
from fastapi.responses import HTMLResponse

from config import templates
from db import database

router = APIRouter()


@router.get("/", response_class=HTMLResponse)
async def home(request: Request):
    return templates.TemplateResponse(request=request, name="base.html")


@router.get("/candidats", tags=["candidats"])
async def get_candidats(request: Request):
    query = "SELECT * FROM candidat"
    data = await database.fetch_all(query=query)

    data_dict = [dict(record) for record in data]

    return templates.TemplateResponse(
        request=request,
        name="data.html",
        context={"data": json.dumps(data_dict, indent=2)},
    )
    
@router.post("/candidats", tags=["candidats"])
async def post_candidats(
    nom: str,
    prenom: str,
    email: str,
    age: int,
    genre: str,
    numeroTel: str,
    anneesExp: int,
    latitude: float,
    longitude: float,
    rue: str,
    ville: str,
    npa: str,
    pays: str

):
    try:
        async with database.transaction():
            insert_address_query = """
            INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
            VALUES (:latitude, :longitude, :rue, :ville, :npa, :pays)
            RETURNING id;
            """
            adresse_id = await database.execute(
                query=insert_address_query,
                values={
                    "latitude": latitude,
                    "longitude": longitude,
                    "rue": rue,
                    "ville": ville,
                    "npa": npa,
                    "pays": pays,
                },
            )

            insert_person_query = """
            INSERT INTO Personne (nom, prenom, email)
            VALUES (:nom, :prenom, :email)
            RETURNING id;
            """
            person_id = await database.execute(
                query=insert_person_query,
                values={"nom": nom, "prenom": prenom, "email": email},
            )

            insert_candidat_query = """
            INSERT INTO Candidat (idPersonne, age, genre, numeroTel, anneesExp, idAdresse)
            VALUES (:idPersonne, :age, :genre, :numeroTel, :anneesExp, :idAdresse)
            """
            await database.execute(
                query=insert_candidat_query,
                values={
                    "idPersonne": person_id,
                    "age": age,
                    "genre": genre,
                    "numeroTel": numeroTel,
                    "anneesExp": anneesExp,
                    "idAdresse": adresse_id,
                },
            )

        return {"status": "success", "message": "Candidat ajouté avec succès"}
    except Exception as e:
        return {"status": "error", "message": str(e)}


@router.put("/candidats/{id}", tags=["candidats"])
async def put_candidats(
    id: int,
    nom: str | None = None,
    prenom: str | None = None,
    email: str | None = None,
    age: int | None = None,
    genre: str | None = None,
    numeroTel: str | None = None,
    anneesExp: int | None = None,
    latitude: float | None = None,
    longitude: float | None = None,
    rue: str | None = None,
    ville: str | None = None,
    npa: str | None = None,
    pays: str | None = None,
):
    try:
        async with database.transaction():
            # Mise à jour de la table Personne
            personne_updates = []
            personne_values = {"id": id}

            if nom:
                personne_updates.append("nom = :nom")
                personne_values["nom"] = nom
            if prenom:
                personne_updates.append("prenom = :prenom")
                personne_values["prenom"] = prenom
            if email:
                personne_updates.append("email = :email")
                personne_values["email"] = email

            if personne_updates:
                update_personne_query = f"""
                UPDATE Personne
                SET {", ".join(personne_updates)}
                WHERE id = :id
                """
                await database.execute(query=update_personne_query, values=personne_values)

            # Mise à jour de la table Candidat
            candidat_updates = []
            candidat_values = {"id": id}

            if age:
                candidat_updates.append("age = :age")
                candidat_values["age"] = age
            if genre:
                candidat_updates.append("genre = :genre")
                candidat_values["genre"] = genre
            if numeroTel:
                candidat_updates.append("numeroTel = :numeroTel")
                candidat_values["numeroTel"] = numeroTel
            if anneesExp:
                candidat_updates.append("anneesExp = :anneesExp")
                candidat_values["anneesExp"] = anneesExp

            if candidat_updates:
                update_candidat_query = f"""
                UPDATE Candidat
                SET {", ".join(candidat_updates)}
                WHERE idPersonne = :id
                """
                await database.execute(query=update_candidat_query, values=candidat_values)

            # Mise à jour de la table Adresse
            adresse_updates = []
            adresse_values = {}

            if latitude:
                adresse_updates.append("latitude = :latitude")
                adresse_values["latitude"] = latitude
            if longitude:
                adresse_updates.append("longitude = :longitude")
                adresse_values["longitude"] = longitude
            if rue:
                adresse_updates.append("rue = :rue")
                adresse_values["rue"] = rue
            if ville:
                adresse_updates.append("ville = :ville")
                adresse_values["ville"] = ville
            if npa:
                adresse_updates.append("npa = :npa")
                adresse_values["npa"] = npa
            if pays:
                adresse_updates.append("pays = :pays")
                adresse_values["pays"] = pays

            if adresse_updates:
                # Récupérer l'idAdresse du Candidat
                get_adresse_query = "SELECT idAdresse FROM Candidat WHERE idPersonne = :id"
                id_adresse = await database.fetch_val(query=get_adresse_query, values={"id": id})

                if not id_adresse:
                    raise Exception("Adresse introuvable pour ce candidat")

                adresse_values["id"] = id_adresse

                update_adresse_query = f"""
                UPDATE Adresse
                SET {", ".join(adresse_updates)}
                WHERE id = :id
                """
                await database.execute(query=update_adresse_query, values=adresse_values)

        return {"status": "success", "message": "Candidat mis à jour avec succès"}
    except Exception as e:
        return {"status": "error", "message": str(e)}





@router.get("/offres", tags=["offres"])
async def get_offres(request: Request):
    try:
        query = "SELECT * FROM offre"
        data = await database.fetch_all(query=query)

        data_dict = []
        for record in data:
            record_dict = dict(record)
            for key, value in record_dict.items():
                if isinstance(value, (date, datetime)):
                    record_dict[key] = value.isoformat()
            data_dict.append(record_dict)

        return templates.TemplateResponse(
            request=request,
            name="data.html",
            context={"data": json.dumps(data_dict, indent=2)},
        )
    except Exception as e:
        return {"status": "error", "message": str(e)}



@router.post("/offres", tags=["offres"])
async def post_offres(
    descriptionOffre: str,
    nomPoste: str,
    anneesExpRequises: int,
    datePublication: date,
    latitude: float,
    longitude: float,
    rue: str,
    ville: str,
    npa: str,
    pays: str,
    dateCloture: date | None = None,
):
    try:
        async with database.transaction():
            insert_address_query = """
            INSERT INTO Adresse (latitude, longitude, rue, ville, npa, pays)
            VALUES (:latitude, :longitude, :rue, :ville, :npa, :pays)
            RETURNING id;
            """
            adresse_id = await database.execute(
                query=insert_address_query,
                values={
                    "latitude": latitude,
                    "longitude": longitude,
                    "rue": rue,
                    "ville": ville,
                    "npa": npa,
                    "pays": pays,
                },
            )

            insert_offre_query = """
            INSERT INTO Offre (idAdresse, descriptionOffre, nomPoste, anneesExpRequises, datePublication, dateCloture)
            VALUES (:idAdresse, :descriptionOffre, :nomPoste, :anneesExpRequises, :datePublication, :dateCloture)
            """
            await database.execute(
                query=insert_offre_query,
                values={
                    "idAdresse": adresse_id,
                    "descriptionOffre": descriptionOffre,
                    "nomPoste": nomPoste,
                    "anneesExpRequises": anneesExpRequises,
                    "datePublication": datePublication,
                    "dateCloture": dateCloture,
                },
            )

        return {"status": "success", "message": "Offre ajoutée avec succès"}
    except Exception as e:
        return {"status": "error", "message": str(e)}



@router.put("/offres/{id}", tags=["offres"])
async def put_offres(
    id: int,
    descriptionOffre: str | None = None,
    nomPoste: str | None = None,
    anneesExpRequises: int | None = None,
    datePublication: date | None = None,
    dateCloture: date | None = None,
    latitude: float | None = None,
    longitude: float | None = None,
    rue: str | None = None,
    ville: str | None = None,
    npa: str | None = None,
    pays: str | None = None,
):
    try:
        async with database.transaction():
            # Mise à jour de la table Offre
            offre_updates = []
            offre_values = {"id": id}

            if descriptionOffre:
                offre_updates.append("descriptionOffre = :descriptionOffre")
                offre_values["descriptionOffre"] = descriptionOffre
            if nomPoste:
                offre_updates.append("nomPoste = :nomPoste")
                offre_values["nomPoste"] = nomPoste
            if anneesExpRequises:
                offre_updates.append("anneesExpRequises = :anneesExpRequises")
                offre_values["anneesExpRequises"] = anneesExpRequises
            if datePublication:
                offre_updates.append("datePublication = :datePublication")
                offre_values["datePublication"] = datePublication
            if dateCloture:
                offre_updates.append("dateCloture = :dateCloture")
                offre_values["dateCloture"] = dateCloture

            if offre_updates:
                update_offre_query = f"""
                UPDATE Offre
                SET {", ".join(offre_updates)}
                WHERE id = :id
                """
                await database.execute(query=update_offre_query, values=offre_values)

            # Mise à jour de la table Adresse
            adresse_updates = []
            adresse_values = {}

            if latitude:
                adresse_updates.append("latitude = :latitude")
                adresse_values["latitude"] = latitude
            if longitude:
                adresse_updates.append("longitude = :longitude")
                adresse_values["longitude"] = longitude
            if rue:
                adresse_updates.append("rue = :rue")
                adresse_values["rue"] = rue
            if ville:
                adresse_updates.append("ville = :ville")
                adresse_values["ville"] = ville
            if npa:
                adresse_updates.append("npa = :npa")
                adresse_values["npa"] = npa
            if pays:
                adresse_updates.append("pays = :pays")
                adresse_values["pays"] = pays

            if adresse_updates:
                # Récupérer l'idAdresse associé à l'Offre
                get_adresse_query = "SELECT idAdresse FROM Offre WHERE id = :id"
                id_adresse = await database.fetch_val(query=get_adresse_query, values={"id": id})

                if not id_adresse:
                    raise Exception("Adresse introuvable pour cette offre")

                adresse_values["id"] = id_adresse

                update_adresse_query = f"""
                UPDATE Adresse
                SET {", ".join(adresse_updates)}
                WHERE id = :id
                """
                await database.execute(query=update_adresse_query, values=adresse_values)

        return {"status": "success", "message": "Offre mise à jour avec succès"}
    except Exception as e:
        return {"status": "error", "message": str(e)}




from datetime import date, datetime

@router.get("/interactions", tags=["interactions"])
async def get_interactions(request: Request):
    try:
        query = "SELECT * FROM interaction"
        data = await database.fetch_all(query=query)

        data_dict = []
        for record in data:
            record_dict = dict(record)
            for key, value in record_dict.items():
                if isinstance(value, (date, datetime)):
                    record_dict[key] = value.isoformat()
            data_dict.append(record_dict)

        return templates.TemplateResponse(
            request=request,
            name="data.html",
            context={"data": json.dumps(data_dict, indent=2)},
        )
    except Exception as e:
        return {"status": "error", "message": str(e)}

