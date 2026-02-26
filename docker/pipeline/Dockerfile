FROM python:3.9

WORKDIR /app

# Versions pineées pour éviter le conflit aiobotocore/botocore
RUN pip install --no-cache-dir \
    "dvc==3.51.2" \
    "dvc-s3==3.2.0" \
    "mlflow-skinny==2.18.0" \
    "pathspec==0.11.2"

# Dépendances du projet
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["tail", "-f", "/dev/null"]