from fastapi import FastAPI
import socket

app = FastAPI()

@app.get("/api/v0/ip")
async def get_server_ip():
    hostname = socket.gethostname()
    ip_address = socket.gethostbyname(hostname)
    return {"ip": ip_address}