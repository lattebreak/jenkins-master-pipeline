docker buildx build -t docker:dind .

docker run -d \
  --name docker \
  --privileged \
  --network jenkins \
  -p 2375:2375 \
  -e DOCKER_TLS_VERIFY="" \
  -e DOCKER_CERT_PATH="" \
  -e DOCKER_TLS_CERTDIR="" \
  docker:dind \
  --host=tcp://0.0.0.0:2375