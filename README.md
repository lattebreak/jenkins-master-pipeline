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

3. Configure Jenkins
    - Install Plugins
        - Docker
    - Dark Mode
    - Set Time Zone

4. Run Alpine/Socat container (for docker agents later on...)
    - https://hub.docker.com/r/alpine/socat
    - this acts as a communication middleman (proxy) between containers (Jenkins-master and Jenkins Docker agents)

5. Create Jenkins Docker agents    
    

