# Ansible-Base-Image
Packer config for building an Ubuntu base image with Ansible pre-installed, for use in other Packer builds. DigitalOcean builder only (for now).

##Building the image
Copy `secrets.json.dist` to `secrets.json,` and enter your DigitalOcean access token.

A wrapper scripts is included to build a snapshot on DigitalOcean. To build the snapshot, run `build.sh`. Note that this script will write out the id of the created snapshot to `~/.packer.d/.ansible-base.snapshot_id` to be used by other packer scripts later. For this reason, Packer will be run with the --machine-readable flag.
