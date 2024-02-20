# Remote Python Development Vagrant Box Configuration


This Vagrant box is specifically designed for remote development.

<div style="
    border: 1px solid #f5c842;
    background-color: #grey;
    padding: 10px;
    margin: 10px;
    border-radius: 5px;
    box-shadow: 0px 2px 15px rgba(0,0,0,0.1);
">

## Why Remote Development?

Remote development provides flexibility, allowing developers to work from any location. It enables the use of powerful servers for code execution, while using a lightweight client for editing and debugging. This approach ensures a consistent environment across a team, mitigates "it works on my machine" issues, and enhances security by keeping code on secure servers.

</div>



## Operating System

- The box runs on Ubuntu 22.04 LTS.

## Python

It comes with several pre-installed Python versions:

- Python 3.10
- Python 3.11
- Python 3.12

## Shell

Zsh is the default shell, enhanced with the powerlevel10k theme for a comprehensive and informative prompt. 

Features like zsh syntax highlighting, zsh autocompletion, and git are enabled.

You can configure your theme during the initial run.

## Python Virtual Environments

Python virtual environments are set to activate automatically when you enter a directory that contains one. To utilize this feature, create your virtual environments in either of the following directories:
- `~/.virtualenvs` (recommended)
- `venv` or `.venv` directory within your project

## Databases 

The box is configured with Postgres and Redis, making it suitable for Django usage.

## Remote Python Development Settings

The box is optimized for running remote IDEs like PyCharm or VS Code smoothly. Default settings have been established to facilitate effortless connection and operation.

Both VS Code and Pycharm IDEs should connect easily with the box. 

## Required Modifications

You need to adjust the Vagrantfile to reflect the specifications of your host machine. Specifically, update the values for disk size, memory, and CPU.

## Getting Started

To begin using this Vagrant box, ensure that [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/) are installed on your machine. After installation, clone this repository and execute `vagrant up` in the project directory.
