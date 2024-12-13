# I have this hostnamectl call to make sure that none of these recipes work in
# a distrobox because of the issues with pipx/brew and ansible between the host
# and box... I don't knwo what to do but for now I"ll just do ansible-vault
# stuff right on the host until I get it working reliably
test:
    hostnamectl
    @echo did it work?

get-vault-key: 
    hostnamectl
    bws secret get $HOMELAB_BOT_VAULT_KEY_ID  | jq -r '.value'

encrypt: 
    hostnamectl
    just get-vault-key >> key

    ansible-vault encrypt inventories/my-ansible-nas/inventory.yml --vault-password-file key
    ansible-vault encrypt inventories/my-ansible-nas/group_vars/nas.yml --vault-password-file key

    rm key

decrypt: 
    hostnamectl
    just get-vault-key >> key

    ansible-vault decrypt inventories/my-ansible-nas/inventory.yml --vault-password-file key
    ansible-vault decrypt inventories/my-ansible-nas/group_vars/nas.yml --vault-password-file key

    rm key
