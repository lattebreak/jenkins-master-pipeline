# Get the docker:dind IP
DOCKER_NET_INSP='docker network inspect jenkins'
DOCKER_DIND_IP=$($DOCKER_NET_INSP | jq -r '.[0].Containers | to_entries[0].value.IPv4Address' | cut -f1 -d "/")
echo $DOCKER_DIND_IP

# Then modify XML with the IP
# But this is a long shot so I'm going to manually edit the DOCKER_HOST for now