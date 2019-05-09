#!/bin/bash

# Packages update
sudo apt-get update
sudo apt-get upgrade

# Add npm
sudo apt-get install npm

# Add Node.js
# Add PPA for current LTS version
sudo apt-get install curl python-software-properties
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install nodejs


