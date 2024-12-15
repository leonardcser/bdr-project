import asyncio

from databases import Database

from config import DATABASE_URL

database = Database(DATABASE_URL)


async def connect():
    for _ in range(6):
        try:
            await database.connect()
            break
        except ConnectionRefusedError:
            print("Database connection failed. Retrying in 5 seconds...")
            await asyncio.sleep(5)
