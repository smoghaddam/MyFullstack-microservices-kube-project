#!/usr/bin/env bash

set -o nounset
set -o errexit
set -o xtrace
# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=eliddocker/myproject-repo

# Step 2
# Run the Docker Hub container with kubernetes
# Pull image secret was loaded into kubectl serviceaccount edited with:
#      kubectl edit serviceaccount default
# and addint the following:
#   imagePullSecrets:   - name: regcred
kubectl patch serviceaccount default -p '{"imagePullSecrets": [{"name": "regcred"}]}'

kubectl create deployment eli-deploy --image=eliddocker/myproject-repo:udaproject

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment/eli-deploy --type="NodePort" --port 80 --service-name=eli-service
