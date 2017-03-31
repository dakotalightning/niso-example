#!/bin/bash
set -e

# Load base utility functions like niso.mute() and niso.install()
source recipes/niso.sh

# This line is necessary for automated provisioning for Debian/Ubuntu.
# Remove if you're not on Debian/Ubuntu.
export DEBIAN_FRONTEND=noninteractive

# Update apt catalog and upgrade installed packages
niso.mute "apt update"
niso.mute "apt-get -y upgrade"

# Set RAILS_ENV
environment=<%= @attributes.environment %>

niso.say 'build-essential'
source recipes/build-essential.sh

niso.say 'git'
source recipes/git.sh

niso.say 'adduser'
source recipes/adduser.sh

niso.say 'ufw'
source recipes/ufw.sh

niso.say 'sudonopassword'
source recipes/sudonopassword.sh

niso.say 'set_env_vars'
source recipes/set_env_vars.sh
