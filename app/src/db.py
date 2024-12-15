import asyncio
from pathlib import Path

from config import DATABASE_URL
from databases import Database

database = Database(DATABASE_URL)


async def connect():
    for _ in range(6):
        try:
            await database.connect()
            break
        except ConnectionRefusedError:
            print("Database connection failed. Retrying in 5 seconds...")
            await asyncio.sleep(5)


async def seed_database():
    sql_file_path = Path("src/sql/schema.sql")

    with open(sql_file_path, "r") as f:
        sql_commands = f.read()

    try:
        async with database.transaction():
            await database.execute(sql_commands)
        print("Database seeded successfully.")
    except Exception as e:
        print(f"Error during database seeding: {e}")
