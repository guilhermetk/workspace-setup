#!/bin/bash

# Update system packages
sudo apt-get update

# Install software-properties-common if not already installed (needed for add-apt-repository)
sudo apt-get install -y software-properties-common

# Install Ansible
sudo apt-get install -y ansible git

# Verify the installation
ansible --version
