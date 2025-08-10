# jenkins-master-pipeline
This repository will contain a mix of bash script and pipeline to maintain/upgrade the Jenkins master container and Jenkins Docker agent on my personal Ubuntu VM.


===================
Activities Tracker:
===================

1. Install Docker
    - https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository

2. Create Jenkins (blueocean) image
    - first create a docker network for jenkins
    - https://www.jenkins.io/doc/book/installing/docker/
    - after adding default user to docker group, restart docker service to take effect, then reboot

3. Configure Jenkins
    - Install Plugins
        - Docker
    - Dark Mode
    - Set Time Zone

4. Run Alpine/Socat container (for docker agents later on...)
    - https://hub.docker.com/r/alpine/socat
    - this acts as a communication middleman (proxy) between containers (Jenkins-master and Jenkins Docker agents)
    - best practice to define a name so jenkins agent "host URI" config only points to a name instead of an IP which changes after VM reboot
    - don't forget to include --network flag to connect the socat container to the jenkins docker network

5. Create Jenkins Docker agents    
    - https://hub.docker.com/r/jenkins/agent
    - "jenkins" should be the default user after root
    - run any job to test if pipeline works -- SUCCESS

6. Create custom Jenkins Dockerfile template
    - with python3 and python3-pip

7. Create shell script to build from the Jenkins Dockerfile
    - also available on: https://www.jenkins.io/doc/book/installing/docker/

8. Create python script to handle the shell script call on Step#7
    - utilizing try-except
    - to be used for the 1st stage of the Jenkins pipeline -- stage('Build Jenkins Image')
    - will perform testing by building the docker agent for faster builds
    - Error during build: ./jenkins-agent/test-build.sh: line 4: docker: command not found
    - Forgot to install docker on agent
    - alpine container with docker does not recognize 'service docker start/status'
        - saw this: https://github.com/docker-library/docker/issues/118
    - [8/11/2025] Blocker: how can I establish a communication between the jenkins agent and the host docker daemon


