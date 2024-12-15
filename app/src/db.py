import time

from asyncpg.exceptions import (
    CannotConnectNowError,
    ConnectionDoesNotExistError,
    InterfaceError,
)
from databases import Database

from config import DATABASE_URL

database = Database(DATABASE_URL)


async def connect():
    for _ in range(6):
        try:
            await database.connect()
            break
        except (
            ConnectionRefusedError,
            InterfaceError,
            CannotConnectNowError,
            ConnectionDoesNotExistError,
        ) as e:
            print(f"Database connection failed: {e}. Retrying in 5 seconds...")
            time.sleep(5)
