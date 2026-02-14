#/usr/bin/bash

# https://docs.portainer.io/start/install-ce/server/docker/linux#docker-run

docker volume create portainer_data
docker run -d -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:lts