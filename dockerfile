
FROM python:3.8-slim

WORKDIR /app

COPY ./app/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY ./app .

EXPOSE 8000

CMD ["gunicorn", "--log-level", "debug", "api:app", "-b", "0.0.0.0:8000"]