#!/bin/sh
# On initialise DVC s'il ne l'est pas déjà
dvc init --no-scm -f

# On configure le "Remote" (le stockage distant sur MinIO)
dvc remote add -d minio s3://dvc-storage
dvc remote modify minio endpointurl http://minio:9000

# On lance la pipeline (le fichier dvc.yaml qui contient tes étapes)
dvc repro

# On garde le conteneur actif pour qu'on puisse voir les logs
tail -f /dev/null