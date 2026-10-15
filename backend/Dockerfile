
FROM python:3.12-slim

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PYTEST_ADDOPTS="-p no:cacheprovider"

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt \
    && useradd --create-home --uid 10001 appuser

COPY alembic.ini ./
COPY pytest.ini ./
COPY alembic ./alembic
COPY app ./app
COPY tests ./tests

RUN chown -R appuser:appuser /app

USER 10001

EXPOSE 3019

CMD ["sh", "-c", "alembic upgrade head && uvicorn app.main:app --host 0.0.0.0 --port 3019"]
