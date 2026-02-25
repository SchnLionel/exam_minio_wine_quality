FROM python:3.9

WORKDIR /app

# On installe juste les 3 outils spécifiques qui manquent
RUN pip install --no-cache-dir dvc[s3] mlflow-skinny boto3

# On copie le reste de tes besoins
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["tail", "-f", "/dev/null"]