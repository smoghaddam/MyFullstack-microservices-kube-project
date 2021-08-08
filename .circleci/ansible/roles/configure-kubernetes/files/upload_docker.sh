#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=eliddocker/app

# Step 2:
# Authenticate & tag
docker tag mydockerapi eliddocker/myproject-repo:udaproject

echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push eliddocker/myproject-repo:udaproject
