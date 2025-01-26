#!/bin/bash

mkdir /var/log/startup
echo "startup started\n" >> /var/log/startup/log.txt
cd ~
git clone https://github.com/kchan5071/install_script_AI-ML.git
echo "initial clone complete\n" >> /var/log/startup/log.txt
cd install_script_AI-ML
chmod +x install.sh
echo "changed permissions for install\n" >> /var/log/startup/log.txt
./install.sh
echo "startup finished\n" >> /var/log/startup/log.txt
