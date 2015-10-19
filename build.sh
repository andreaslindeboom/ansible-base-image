#!/bin/bash
packer build --var-file=secrets.json --only=digitalocean -machine-readable ansible-base.json |\
    tee >(grep 'artifact,0,id' | cut -d, -f6 | cut -d: -f2 > ~/.packer.d/.ansible-base.snapshot_id)
