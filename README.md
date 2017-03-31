# nîso ᓃᓱ Example

[![Gem Version](https://badge.fury.io/rb/niso.svg)](https://badge.fury.io/rb/niso) [![Build Status](https://travis-ci.org/dakotalightning/niso.svg?branch=master)](https://travis-ci.org/dakotalightning/niso)

    niso is the number 2 (two) in Cree

Here is an example of the project [niso](https://github.com/dakotalightning/niso) for provisioning servers with roles `web`, `db` and `job`.

## Installation

You need [niso](https://github.com/dakotalightning/niso).

    gem install niso

## New droplet

    niso setup
    niso teardown

## Steps

1. Copy your ssh public key into `files/deploy_key`.
2. Edit `niso.yml` with your app name and mysql information.
3. This script will setup mysql for password authentication, instead of authentication based on the machine's user.
4. Make sure you can ssh to your server with the root account. You might want to copy your ssh public key into /root/.ssh/authorized_keys, so you don't have to type the password.
5. `niso deploy [HOST/IP]` or `niso deploy do example [HOST/IP]`.


## Suzi support
I will be creating recipes eventually, however if you would like to use sunzi recipes. Just include the line below in your `install.sh`

    source recipes/sunzi.sh
