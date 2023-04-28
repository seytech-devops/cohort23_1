# Class Notes - 20230427
# Class Notes - 20230426


## Cloudforamtion

    IaC tool that can help you to provision the resources in AWS. 

---
# Ansible

## Overview

Ansible® is an open source IT automation engine that automates provisioning, configuration management, application deployment, orchestration, and many other IT processes.

Use Ansible automation to install software, automate daily tasks, provision infrastructure, improve security and compliance, patch systems, and share automation across your organization.

## What is an Ansible Playbook?
An Ansible playbook is a file where users write Ansible code, an organized collection of scripts defining the work of a server configuration. They describe a set of steps in a general IT process or a policy for your remote systems to enforce.

Playbooks consist of one or more plays run in a particular order. A play is an ordered set of tasks run against hosts chosen from your inventory. Plays define the work to be done. Each play contains a set of hosts to configure, and a list of tasks to be executed. There are no standardized plays; an administrator must write each play.

Playbooks use YAML, a human-readable data serialization language. YAML is a recursive acronym that stands for “YAML Ain’t Markup Language.” 

## A Word About Ad-Hoc Commands
Ad-hoc commands automate a single task on one or more managed nodes, using the /usr/bin/ansible command-line tool. These commands are fast and easy to create, but are not reusable. They are ideal for tasks that you don’t perform very often. For instance, you can use an ad-hoc command to copy a file.

It’s necessary to master ad-hoc commands because they not only show the simplicity and versatility of Ansible, but many ad-hoc command concepts apply to playbooks.

## What Are Ansible Playbooks Used For?
Ansible playbooks run multiple tasks, assign roles, and define configurations, deployment steps, and variables. If you’re using multiple servers, Ansible playbooks organize the steps between the assembled machines or servers and get them organized and running in the way the users need them to. Consider playbooks as the equivalent of instruction manuals.

Users can employ Ansible playbooks to manage deployments to and configurations of remote machines. Furthermore, playbooks can sequence a multi-tiered rollout that uses rolling updates—launching tasks either synchronously or asynchronously.

In summary, Ansible playbooks help users easily control multiple machines and have all affected units act in harmony. It is an immensely powerful resource for DevOps professionals to have under their belts.

---

## Examples:
- ansible all -i /etc/ansible/hosts -a "uptime"

- ansible all -a "df -h" -u ubuntu 

- ansible all -m ping -u ubuntu

- ansible servers -a "uptime"

- ansible servers -a "cat /etc/os-release"

- ansible all -i /etc/ansible/inventory/staging -m command -a "uptime"

- ansible-playbook -i /etc/ansible/inventory/staging /etc/ansible/playbooks/httpd.yml
sudo systemctl status apache2