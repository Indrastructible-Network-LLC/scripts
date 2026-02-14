#!/usr/bin/bash

# Create the render group and add your user
groupadd render
usermod -aG render $USER

# Activate the changes to groups
newgrp render