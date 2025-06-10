FROM python:3.11-slim

RUN pip install fastapi uvicorn

COPY app.py /app/main.py
WORKDIR /app

EXPOSE 80

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]