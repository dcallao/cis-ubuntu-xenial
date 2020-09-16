# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"
  config.nfs.functional = false

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1024
    vb.cpus = 1
    vb.gui = false
  end

  config.vm.provider :libvirt do |libvirt|
    libvirt.memory = 1024
    libvirt.cpus = 1
    libvirt.nic_model_type = "virtio"
    libvirt.random_hostname = true
  end

  config.vm.provision "prepare-installation", privileged: true, type: "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y python-pip python-dev libffi-dev libssl-dev openssh-server
    pip install ansible markupsafe
  SHELL

  config.vm.provision "install", type: "shell", inline: <<-SHELL
    mkdir -p /home/vagrant/ansible/playbooks/roles
    cd /home/vagrant/ansible/playbooks
    cp -r /vagrant roles/cis
    cat >>  install-cis-ubuntu-xenial.yml << 'EOF'
---
- hosts: 127.0.0.1
  connection: local
  roles:
    - cis
EOF
  SHELL

  config.vm.provision "run", type: "shell", inline: <<-SHELL
    cd /home/vagrant/ansible/playbooks
    ansible-playbook -b -u vagrant -i '127.0.0.1,' install-cis-ubuntu-xenial.yml
  SHELL
end
