#!/usr/bin/env bash
set -o nounset
set -o errexit
set -o xtrace
## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=mynewdockerapi .

# Step 2:
# List docker images
docker images

# Step 3:
# uncomment the row bellow to Run flask app
#docker run -d -p 8080:80 mydockerapi
