import arel
from fastapi.templating import Jinja2Templates

DEVELOPMENT = 1
DATABASE_URL = "postgresql://bdr:bdr@database:5432/db"

hotreload = arel.HotReload(
    paths=[
        arel.Path("static"),
        arel.Path("src/templates"),
    ],
)

templates = Jinja2Templates(directory="src/templates")
templates.env.globals["DEVELOPMENT"] = DEVELOPMENT
templates.env.globals["hotreload"] = hotreload
