FROM python:3.8

RUN pip install --no-cache-dir django psycopg2-binary

WORKDIR /app

COPY . .

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
