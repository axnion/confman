#!/bin/bash
DISTRO="$(cat /etc/*-release | grep ID_LIKE | awk -F '"' '{print $2}')"

# Install Ansible if it's not installed
if ! [ -x "$(command -v ansible --version)" ]; then
  if [ "$DISTRO" = "ubuntu" ]; then
    echo "Installing Ansible for Ubuntu"
    add-apt-repository universe
    apt-get -y install software-properties-common
    apt-add-repository -y ppa:ansible/ansible
    apt-get update
    apt-get -y install ansible
  elif [ "$DISTRO" = "arch" ]; then
    echo "Installing Ansible for Arch"
    pacman -S ansible --noconfirm
    yay -Ss ansible-aur-git
  fi
fi

# Run playbook locally
ansible-playbook --connection=local --ask-become-pass setup.yml

