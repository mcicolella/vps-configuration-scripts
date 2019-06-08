#!/bin/bash

# Packages update
sudo apt-get update
sudo apt-get upgrade

# Add Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update 
sudo apt-get install google-chrome-stable

# Add Visual Studio Code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
supo apt-get update
sudo apt install code

# Add npm
sudo apt-get install npm

# Add Node.js
# Add PPA for current LTS version
sudo apt-get install curl python-software-properties
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install nodejs

# Add Java default Jdk
sudo apt-get install default-jdk

# Add Netbeans 8.2 (working only with Java 8)
wget -c http://download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-linux.sh
chmod +x netbeans-8.2-linux.sh 
./netbeans-8.2-linux.sh


