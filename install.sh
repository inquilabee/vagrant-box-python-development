#!/usr/bin/env bash

sudo apt update
sudo apt upgrade
sudo apt dist-upgrade

# Install required packages
echo "Installing required packages"
sudo apt install -y \
     zlib1g-dev build-essential  \
     libncursesw5-dev libssl-dev \
     libsqlite3-dev tk-dev \
     libgdbm-dev libc6-dev libbz2-dev \
     python3-setuptools \
     python3-pip \
     python3-venv \
     openssl libffi-dev \
     libssl-dev curl \
     nginx \
     locate \
     git 

# Install Java
echo "Installing Java"
sudo apt update -y && sudo apt install -y openjdk-11-jdk

# Install pip packages
echo "Upgrading pip"
python3 -m pip install --upgrade pip

# Install Python
echo "Installing Python"
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update -y && sudo apt install -y python3.12 python3.11  

# Install docker using snap
echo "Installing Docker"
sudo apt update -y && sudo apt install snapd -y
sudo snap install docker

# Install Postgres
echo "Installing Postgres"
sudo apt -y update && sudo apt -y install libpq-dev postgresql postgresql-contrib 

# Check the status of the postgres service
echo "Checking the status of the postgres service ... "
sleep 5
sudo systemctl status postgresql

# Install Redis
echo "Installing Redis"
sudo apt update -y && sudo apt install redis-server -y

# Done message 
echo "Done installing all the required packages"

# ZSH Setup
# if zsh_setup.sh present, run it
if [ -f /vagrant/zsh_setup.sh ]; then
    echo "Running zsh_setup.sh"
    chmod +x /vagrant/zsh_setup.sh
    /vagrant/zsh_setup.sh
fi

# clean up
echo "Cleaning up"
sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y

# Add scripts to default shell rc file: .bashrc
echo "Adding script to .bashrc"
echo "source /vagrant/auto_activate_venv_script.sh" >> ~/.bashrc