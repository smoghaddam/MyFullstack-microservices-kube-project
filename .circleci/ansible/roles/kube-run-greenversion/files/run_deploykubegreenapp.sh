#!/usr/bin/env bash

set -o nounset
set -o errexit
set -o xtrace
# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=eliddocker/myproject-repo

# Step 2
kubectl set image deployment/eli-deploy --image=eliddocker/myproject-repo:udaproject:v2

# Step 3:
# List kubernetes pods
kubectl rollout status deployments/eli-deploy

# Step 4:
# Forward the container port to a host
kubectl get svc
