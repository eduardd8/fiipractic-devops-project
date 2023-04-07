# FiiPractic-DevOps-Project

This project is aimed at creating an Ansible playbook that provisions a virtual machine, installs Docker on the machine, and raises a container with Jenkins, among other things. This playbook sets up an environment for developing, testing, and deploying applications using containers. The containers include Jenkins for continuous integration and deployment, SonarQube for code quality analysis, Nginx for serving static files, Prometheus for monitoring, and Grafana for visualizing metrics. It also demonstrates how to build a custom Docker image and copy files between the remote machine and the host machine.

The playbook is written in YAML and is intended to be executed using Ansible. It assumes that the remote machine has Ansible installed and is configured to allow SSH access. In addition to installing Ansible on the remote machine, this project also installs Docker on the control node using the shell module and installs the requests module using pip.

# What this Vagrant file does

The Vagrant file defines two virtual machines, where the first one (myvmproject) acts as the control node and the second one (myvmproject2) as the target node, both with CentOS 7 operating system, private IP addresses on the same network, and a set of pre-installed packages and configurations for basic functionality. These virtual machines will be used to deploy and manage the project through Ansible playbook.

# What this playbook does

The devops_project.yml file contains a set of tasks that are executed in order to provision a virtual machine and install the necessary software. Here's what each task does:

1.  Install required packages: installs the necessary packages on the remote machine using the yum module.
2.  Install Docker on the remote machine: installs Docker on the remote machine using the shell module.
3.  Start and enable Docker service: starts and enables the Docker service using the systemd module.
4.  Install requests module: installs the requests module using pip.
5.  Install Docker SDK for Python: installs the Docker SDK for Python using pip.
6.  Pull Jenkins container: pulls the Jenkins container from Docker Hub and starts it using the docker_container module.
7.  Pull SonarQube container: pulls the SonarQube container from Docker Hub and starts it using the docker_container module.
8.  Pull Nginx container
9.  Copy index.html to the target node
10. Copy index.html to the Nginx container
11. Pull Prometheus container
12. Pull Grafana container
13. Configure Grafana datasource for Prometheus
14. Copy Dockerfile and application code to the target node
15. Build a custom Docker image.
