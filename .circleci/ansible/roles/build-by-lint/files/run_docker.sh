#!/usr/bin/env bash
set -o nounset
set -o errexit
set -o xtrace
## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=mydockerapi .

# Step 2:
# List docker images
docker images ls

# Step 3:
# Run flask app
docker run -d -p 8080:80 mydockerapi
