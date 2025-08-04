# jenkins-master-pipeline
This repository will contain a mix of bash script and pipeline to maintain/upgrade the Jenkins master container on my personal Ubuntu VM.


===================
Activities Tracker:
===================

1. Install Docker
    - https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository

2. Create Jenkins (blueocean) image
    - first create a docker network for jenkins
    - https://www.jenkins.io/doc/book/installing/docker/
    - when adding users to docker group, restart docker service to take effect, then reboot

3. Install Plugins

