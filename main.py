from fastapi import FastAPI
from datetime import datetime

app = FastAPI()

@app.get('/')
def read_root():
    current_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    return {"message": f"Hello World, current time is {current_time}"}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)