#!/usr/bin/env bash

set -o nounset
set -o errexit
set -o xtrace
# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=eliddocker/myproject-repo

# Step 2
kubectl set image deployment/eli-deploy myproject-repo=eliddocker/myproject-repo:predict_greenversion

# Step 3:
# List kubernetes pods
sleep 11
if [[ $(timeout 5 kubectl rollout status deployments/eli-deploy) != *"successfully rolled out"* ]]; then
    kubectl rollout undo deployments/eli-deploy
    echo "rollout rollbacked!"
    exit 1
fi

# Step 4:
# Forward the container port to a host
kubectl get svc
