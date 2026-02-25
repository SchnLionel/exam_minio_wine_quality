#!/bin/sh
# On attend que le serveur MinIO réponde
sleep 5;

# On configure le client "mc" pour parler à notre serveur local
mc alias set myminio http://localhost:9000 minioadmin minioadmin;

# On crée les buckets s'ils n'existent pas
mc mb myminio/dvc-storage;
mc mb myminio/mlflow-artifacts;

# On rend les buckets accessibles (politique publique ou autre selon besoin)
mc anonymous set public myminio/dvc-storage;
mc anonymous set public myminio/mlflow-artifacts;

exit 0;