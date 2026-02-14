#/usr/bin/bash

# https://docs.portainer.io/start/upgrade/docker#community-edition

# Stop and remove the old version
docker stop portainer
docker rm portainer

# Ensure that you have the most up to date version of the image locally
docker pull portainer/portainer-ce:lts

# Deploy the updated version of Portainer
docker run -d -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:lts