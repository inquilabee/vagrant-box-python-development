# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 8000, host: 8000

  config.vm.synced_folder "~/workspace", "/workspace", type: "rsync",
    rsync__exclude: ["node_modules/", "tmp/"]

  config.vm.provider "virtualbox" do |vb|
     vb.gui = false
     vb.memory = "8192" # 8GB
     vb.cpus = 8
  end
  
  # SSH Setup
  # config.ssh.private_key_path = "~/.ssh/vagrant_vm"
  # config.ssh.insert_key = false

  # Run the install.sh script after the VM is up
  config.vm.provision :shell, path: "install.sh", privileged: false
end