# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    # Test environment for this Ansible configuration
    # System takes 2GB of memory and is available on port 10.0.10.10
    config.vm.define :lab do |lab|
        lab.vm.box = "bento/ubuntu-16.04"
        lab.vm.network :private_network, ip: "10.0.10.10"
        lab.vm.provider "virtualbox" do |vb|
            vb.memory = "2048"
        end
    end
end