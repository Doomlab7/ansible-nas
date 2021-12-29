#!/bin/bash
ansible-vault decrypt inventories/my-ansible-nas/inventory.yml --vault-password-file key
ansible-vault decrypt inventories/my-ansible-nas/group_vars/nas.yml --vault-password-file key
ansible-vault decrypt inventories/my-ansible-nas/group_vars/sandbox.yml --vault-password-file key
