#!/bin/bash

sudo apt install software-properties-common --yes
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible --yes

ansible-playbook --ask-vault-pass --ask-become-pass local.yml
