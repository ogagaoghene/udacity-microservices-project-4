#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=987924/predictor
tag=predictor
# Step 2:  
# Authenticate & tag
docker login 
docker system info | grep Registry
echo "Docker ID and Image: $dockerpath tag: $tag"
docker tag $dockerpath $dockerpath:$tag
# Step 3:
docker image push $dockerpath:$tag
