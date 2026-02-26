#!/bin/sh

# Attendre que minio-init ait fini de créer les buckets
sleep 15

# Configure le remote DVC pointant vers MinIO
dvc remote add -d minio s3://dvc-storage --force
dvc remote modify minio endpointurl http://minio:9000

# Lance la pipeline
dvc repro

# Push les artefacts vers MinIO (requis pour le test 3)
dvc push