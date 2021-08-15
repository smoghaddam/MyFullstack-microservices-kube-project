#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub
set -o nounset
set -o errexit
set -o xtrace
# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=eliddocker/app

# Step 2:
# Authenticate & tag
cat ~/my_password.txt | docker login --username eliddocker --password-stdin
docker tag mynewdockerapi eliddocker/myproject-repo:predict_greenversion

echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push eliddocker/myproject-repo:predict_greenversion