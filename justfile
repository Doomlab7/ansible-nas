get-vault-key: 
    bws secret get $HOMELAB_BOT_VAULT_KEY_ID  | jq -r '.value'

encrypt: 
    just get-vault-key >> key

    ansible-vault encrypt inventories/my-ansible-nas/inventory.yml --vault-password-file key
    ansible-vault encrypt inventories/my-ansible-nas/group_vars/nas.yml --vault-password-file key

    rm key

decrypt: 
    just get-vault-key >> key

    ansible-vault decrypt inventories/my-ansible-nas/inventory.yml --vault-password-file key
    ansible-vault decrypt inventories/my-ansible-nas/group_vars/nas.yml --vault-password-file key

    rm key
