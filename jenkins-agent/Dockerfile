# BASE IMAGE
FROM alpine:latest

# SWITCH USER TO ROOT
USER root

# CREATE DEFAULT GROUP, USER, HOME DIR
RUN addgroup -S jenkins && adduser -S jenkins -G jenkins && \
    mkdir -p /home/jenkins && \
    chown jenkins:jenkins /home/jenkins

# SET /home/jenkins AS HOME DIRECTORY
WORKDIR /home/jenkins

# INSTALL PYTHON3, PY3-PIP
RUN apk add --no-cache python3 py3-pip

# SWITCH USER BACK TO JENKINS
USER jenkins