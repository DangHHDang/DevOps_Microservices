#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=dangdang511/devops-microservices-api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy predict-kubernate --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods
# Step 4:
# Forward the container port to a host
kubectl expose pod predict-kubernate-668d5bf96d-lphbb --port=80 --name=api
kubectl port-forward pod/predict-kubernate-668d5bf96d-lphbb 8080:80

