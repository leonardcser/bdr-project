from config import hotreload
from db import connect, database, seed_database
from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles
from routes import router
from starlette.routing import WebSocketRoute

app = FastAPI(
    routes=[WebSocketRoute("/hot-reload", hotreload, name="hot-reload")],
    on_startup=[hotreload.startup, connect, seed_database],
    on_shutdown=[hotreload.shutdown, database.disconnect],
)
app.mount("/static", StaticFiles(directory="static"), name="static")
app.include_router(router)
