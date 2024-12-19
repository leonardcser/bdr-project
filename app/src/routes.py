import json

from fastapi import APIRouter, Request
from fastapi.responses import HTMLResponse

from config import templates
from db import database

router = APIRouter()


@router.get("/", response_class=HTMLResponse)
async def home(request: Request):
    return templates.TemplateResponse(request=request, name="base.html")


@router.get("/example")
async def data(request: Request):
    query = "SELECT * FROM candidat"
    data = await database.fetch_all(query=query)

    # Convert the list of records to a list of dictionaries
    data_dict = [dict(record) for record in data]

    return templates.TemplateResponse(
        request=request,
        name="data.html",
        context={"data": json.dumps(data_dict, indent=2)},
    )


@router.get("/candidats", tags=["candidats"])
async def get_candidats(request: Request):
    return "ok"


@router.post("/candidats", tags=["candidats"])
async def post_candidats(request: Request):
    return "ok"


@router.put("/candidats", tags=["candidats"])
async def put_candidats(request: Request):
    return "ok"


@router.get("/offres", tags=["offres"])
async def get_offres(request: Request):
    return "ok"


@router.post("/offres", tags=["offres"])
async def post_offres(request: Request):
    return "ok"


@router.put("/offres", tags=["offres"])
async def put_offres(request: Request):
    return "ok"


@router.get("/interactions", tags=["interactions"])
async def get_interactions(request: Request, id_personne: int, id_offre: int):
    return "ok"
