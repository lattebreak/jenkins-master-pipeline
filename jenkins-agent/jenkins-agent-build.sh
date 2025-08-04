#!/bin/bash

# BUILD JENKINS AGENT IMAGE TO BE USED AS AGENT TEMPLATE
docker buildx build -t jenkins-agent1:v1.2 .