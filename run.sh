#!/bin/bash

# Install Ansible if it's not installed
if type ansible --version >/dev/null 2>&1; then
  apt-get -y install software-properties-common
  apt-add-repository -y ppa:ansible/ansible
  apt-get update
  apt-get -y install ansible
fi

# Run playbook locally
ansible-playbook --connection=local --ask-become-pass setup.yml 
