#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=api .

# Step 2: 
# List docker images
docker images ls

# Step 3: 
# Run flask app
docker run -d -p 80:80 api
