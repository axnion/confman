#! /bin/bash
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible
git clone https://github.com/pigmonkey/ansible-aur.git library/ansible-aur
