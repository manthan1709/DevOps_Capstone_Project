from pydantic_settings import BaseSettings, SettingsConfigDict

class Settings(BaseSettings):
    app_name: str = "MinePulse API"
    database_url: str = "postgresql+psycopg://minepulse:minepulse@localhost:5432/minepulse"
    model_config = SettingsConfigDict(env_file=".env", extra="ignore")

settings = Settings()
