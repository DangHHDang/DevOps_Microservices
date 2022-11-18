#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=dangdang511/devops-microservices-api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
#docker login -u <YOUR_USER_NAME> --p <YOUR_PASSWORD>
docker login -u dangdang511 --p Haidang511@
docker tag api $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
