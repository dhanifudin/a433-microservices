#!/usr/bin/env bash

# Build the image and set the tag dhanifudin/karsajobs:latest
# from current directory context
docker build -t dhanifudin/karsajobs-ui:latest .

# Authenticate into Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u dhanifudin --password-stdin

# Push the image
docker push dhanifudin/karsajobs-ui:latest