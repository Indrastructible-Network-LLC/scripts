#!/usr/bin/bash

# Escalate privileges to run this script as root user
if [ "`id -u`" -ne 0 ]; then
 exec sudo "$0"
 exit 99
fi

# https://canonical-kernel-docs.readthedocs-hosted.com/latest/reference/hwe-kernels/#installing-a-hwe-kernel

# Installing a HWE kernel
apt-get update
apt-get install --install-recommends linux-generic-hwe-24.04

# https://dgpu-docs.intel.com/driver/client/overview.html

# Refresh the local package index and install the package for managing software repositories
apt-get update
apt-get install -y software-properties-common

# Add the intel-graphics PPA
add-apt-repository -y ppa:kobuk-team/intel-graphics

# Install the compute-related packages
apt-get install -y libze-intel-gpu1 libze1 intel-metrics-discovery intel-opencl-icd clinfo intel-gsc

# Install the media-related packages
apt-get install -y intel-media-va-driver-non-free libmfx-gen1 libvpl2 libvpl-tools libva-glx2 va-driver-all vainfo