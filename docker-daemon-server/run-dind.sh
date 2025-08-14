docker buildx build -t docker:dind .

docker run -d \
  --name docker \
  --privileged \
  --network jenkins \
  -p 2375:2375 \
  -e DOCKER_TLS_VERIFY="" \
  -e DOCKER_CERT_PATH="" \
  -e DOCKER_TLS_CERTDIR="" \
  --add-host=docker:$(docker network inspect jenkins -f '{{(index .Containers "docker").IPv4Address}}') \
  docker:dind \
  --host=tcp://0.0.0.0:2375