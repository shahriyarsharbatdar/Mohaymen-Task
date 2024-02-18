from fastapi import FastAPI
import redis

app = FastAPI()
r = redis.Redis(host='localhost', port=6379, db=0)

@app.get("/")
async def get_cities_by_country_key(key: str):
    cities = r.smembers(key)
    return {"cities": list(cities)}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)
