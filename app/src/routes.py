import json

from fastapi import APIRouter, Request
from fastapi.responses import HTMLResponse

from config import templates
from db import database

router = APIRouter()


@router.get("/", response_class=HTMLResponse)
async def home(request: Request):
    return templates.TemplateResponse(request=request, name="base.html")


@router.get("/data")
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
