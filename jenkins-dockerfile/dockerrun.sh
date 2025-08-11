#!/bin/bash

# BUILD JENKINS MASTER IMAGE
docker buildx build -t myjenkins-blueocean:v1.0 .

# RUN JENKINS CONTAINER
docker run \
  --name jenkins-blueocean \
  --restart=on-failure \
  --detach \
  --network jenkins \
  --env DOCKER_HOST=tcp://docker:2375 \
  --publish 8080:8080 \
  --publish 50000:50000 \
  --volume jenkins-data:/var/jenkins_home \
  myjenkins-blueocean:v1.0