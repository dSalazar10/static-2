#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
DOCKERPATH="dsalazar10/udacity"

# Step 2:  
# Authenticate & tag
docker login
docker image ls
echo "Enter Image ID:"
read IMG_ID
docker tag $IMG_ID $DOCKERPATH

# Step 3:
# Push image to a docker repository
docker push $DOCKERPATH