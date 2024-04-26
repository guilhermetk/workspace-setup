#!/bin/bash

# Update system packages
sudo apt-get update

# Install software-properties-common if not already installed (needed for add-apt-repository)
sudo apt-get install -y software-properties-common

# Add the official Ansible PPA (Personal Package Archive)
sudo add-apt-repository --yes --update ppa:ansible/ansible

# Install Ansible
sudo apt-get install -y ansible git

# Verify the installation
ansible --version
