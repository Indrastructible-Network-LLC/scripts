#!/usr/bin/bash

# https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user

# Create the docker group and add your user
groupadd docker
usermod -aG docker $USER

# Activate the changes to groups
newgrp docker