#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=***/***

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl create deployment devops --image=$dockerpath
kubectl run devops --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
kubectl expose deployment devops --type="NodePort" --port=80
sleep 60
kubectl port-forward deployment/devops 8080:80
kubectl logs --selector app=devops
