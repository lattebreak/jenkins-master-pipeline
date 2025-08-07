#!/bin/bash

# BUILD JENKINS AGENT IMAGE TO BE USED AS AGENT TEMPLATE
docker buildx build -t test-build:v1.0 .