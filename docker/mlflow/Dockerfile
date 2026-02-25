FROM python:3.9-slim
# Installation de MLflow et des outils pour parler au stockage S3 (MinIO)
RUN pip install mlflow boto3 pymysql
EXPOSE 5000
# On utilise une base de données locale (sqlite) pour stocker les noms des expériences
CMD ["mlflow", "server", "--host", "0.0.0.0", "--port", "5000", "--backend-store-uri", "sqlite:///mlflow.db", "--default-artifact-root", "s3://mlflow-artifacts/"]