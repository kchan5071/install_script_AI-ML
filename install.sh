#!/bin/bash

# Install the required packages
sudo apt-get update
#install python
sudo apt-get install -y python3 python3-pip python3-venv
#install aws cli
sudo snap install aws-cli --classic

#install webserver stuff
sudo apt install -y nodejs
sudo apt install -y mariadb-server
sudo apt install -y mysql-server
sudo apt install -y apache2
sudo apt install -y php php-fpm
sudo apt install -y htop

mkdir -p AI-sandbox
mv requirements.txt AI-sandbox
cd AI-sandbox

# Create a virtual environment
python3 -m venv AI-sandbox-env

# Activate the virtual environment
source AI-sandbox-env/bin/activate

# use pip3 to install the required packages
pip3 install -r requirements.txt

#use npm to install the required packages
npm install ws

# set alias' for activating and deactivating the virtual environment
alias act="source ~/install_script_AI-ML/AI-sandbox/AI-sandbox-env/bin/activate"
alias deact="deactivate"