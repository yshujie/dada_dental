import uvicorn
from src.api.main import app
from config.settings import settings

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=settings.port)