# BASE IMAGE
FROM jenkins/agent:latest-alpine

# SWITCH USER TO ROOT
USER root

# INSTALL PYTHON3, PY3-PIP
RUN apk add --no-cache python3 py3-pip docker-cli docker-cli-buildx

# SWITCH USER BACK TO JENKINS
USER jenkins