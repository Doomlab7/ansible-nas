#!/bin/bash
ansible-vault encrypt inventories/my-ansible-nas/inventory.yml --vault-password-file key
ansible-vault encrypt inventories/my-ansible-nas/group_vars/nas.yml --vault-password-file key
