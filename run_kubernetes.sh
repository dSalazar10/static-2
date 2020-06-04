#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
DOCKERPATH="dsalazar10/udacity"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run app\
    --generator=run-pod/v1\
    --image=$DOCKERPATH\
    --port=80 --labels app=app

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward app 80:80