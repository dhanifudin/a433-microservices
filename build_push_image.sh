#!/usr/bin/env bash

# Build the image and set the tag item-app:v1 from current directory context
docker build -t item-app:v1 .

# List docker images
docker images

# Rename docker image before push into GitHub Package
docker image tag item-app:v1 ghcr.io/dhanifudin/a433-microservices:v1 .

# Authenticate into Github Package registry
echo $GITHUB_TOKEN | docker login ghcr.io -u dhanifudin --password-stdin

# Push the image
docker push ghcr.io/dhanifudin/a433-microservices:v1