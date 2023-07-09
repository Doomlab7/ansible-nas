#!/bin/bash
rsync -aP --no-links --exclude='.cache' --exclude='./.local/state/nvim/log' --delete /home/nic /tank/encrypted/fs/home/
