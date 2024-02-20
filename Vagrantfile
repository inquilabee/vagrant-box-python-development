# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 8000, host: 8000

  config.vm.synced_folder "~/workspace", "/workspace"

  config.disksize.size = "100GB"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "10240"
    vb.cpus = 10

    # DNS Setup: Use the host's resolver
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]

    # Use multiple cores
    vb.customize ["modifyvm", :id, "--ioapic", "on"]

    # Enable 3D Acceleration
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]

    # Increase Video Memory (in MB)
    vb.customize ["modifyvm", :id, "--vram", "128"]

    # Disable Time Sync between host and guest
    vb.customize ["guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 10000]

    # Enable Clipboard Sharing
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    vb.customize ["modifyvm", :id, "--draganddrop", "hosttoguest"]
  end
  
  # SSH Setup
  # config.ssh.private_key_path = "~/.ssh/vagrant_vm"
  # config.ssh.insert_key = false

  # Run the install.sh script after the VM is up
  config.vm.provision :shell, path: "install.sh", privileged: false
end