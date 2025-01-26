#!/bin/bash

mkdir /var/log/startup
echo "startup started" >> /var/log/startup/log.txt
cd ~
git clone https://github.com/kchan5071/install_script_AI-ML.git
echo "initial clone complete" >> /var/log/startup/log.txt
cd install_script_AI-ML
chmod +x install.sh
echo "changed permissions for install" >> /var/log/startup/log.txt
./install.sh
echo "startup finished" >> /var/log/startup/log.txt
