#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
echo "Creating Docker Path..."
dockerpath=***/***

# Step 2:  
# Authenticate & tag
echo "Authentication and tagging..."
docker login -u **** -p ****
docker tag devops $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
echo "Uploading to Docker Hub"
docker push $dockerpath
