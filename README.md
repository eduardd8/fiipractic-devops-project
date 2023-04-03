# FiiPractic-DevOps-Project

This project is aimed at creating an Ansible playbook that provisions a virtual machine, installs Docker on the machine, and raises a container with Jenkins, among other things.

# Usage

This project is currently a work in progress, and more instructions on how to use the Ansible playbook will be added as development progresses.

# What this playbook does

The devops_project.yml file contains a set of tasks that are executed in order to provision a virtual machine and install the necessary software. Here's what each task does:

1. Install required packages: installs the necessary packages on the remote machine using the yum module.
2. Install Docker on the remote machine: installs Docker on the remote machine using the shell module.
3. Start and enable Docker service: starts and enables the Docker service using the systemd module.
4. Install requests module: installs the requests module using pip.
5. Install Docker SDK for Python: installs the Docker SDK for Python using pip.
6. Pull Jenkins container: pulls the Jenkins container from Docker Hub and starts it using the docker_container module.
7. Pull SonarQube container: pulls the SonarQube container from Docker Hub and starts it using the docker_container module.
