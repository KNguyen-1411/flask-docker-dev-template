# Development stage
FROM python:3.9-slim AS development

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

ENV FLASK_ENV=development
ENV PYTHONUNBUFFERED=1

CMD ["python", "app.py"]

# Build stage
FROM python:3.9-slim AS build

WORKDIR /app

COPY requirements.txt requirements.txt

COPY --from=development /app /app

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_ENV=production

# Production stage
FROM python:3.9-slim AS production

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY --from=build /app /app

EXPOSE 5000

ENV FLASK_ENV=production
ENV PYTHONUNBUFFERED=1

CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
