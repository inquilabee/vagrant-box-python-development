# Vagrant Box

This Vagrant box is configured with the following features:

## Operating System

- Ubuntu 22.04 LTS

## Python

The box comes with multiple versions of Python pre-installed:

- Python 3.10
- Python 3.11
- Python 3.12

## Shell

The default shell is Zsh, with the powerlevel10k theme for a rich, informative prompt. 

Configure your theme in the first run.

## Python Virtual Environments

Python virtual environments are automatically activated when you navigate into a directory containing one. To take advantage of this feature, create your virtual environments in the `~/.virtualenvs` directory.

## Getting Started

To start using this Vagrant box, you need to have [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/) installed on your machine. Once you have those, you can clone this repository and run `vagrant up` in the project directory.

