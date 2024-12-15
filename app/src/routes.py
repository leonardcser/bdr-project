from config import templates
from db import database
from fastapi import APIRouter, Request
from fastapi.responses import HTMLResponse

router = APIRouter()


@router.get("/", response_class=HTMLResponse)
async def home(request: Request):
    return templates.TemplateResponse(request=request, name="base.html")


@router.get("/data")
async def data():
    query = "SELECT * FROM candidat"
    users = await database.fetch_all(query=query)
    return users
