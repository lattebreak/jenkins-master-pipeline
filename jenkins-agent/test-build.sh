#!/bin/bash

# BUILD JENKINS AGENT IMAGE TO BE USED AS AGENT TEMPLATE
docker buildx build -t jenkins-agent:test ./jenkins-agent