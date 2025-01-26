#!/bin/bash

# git clone website
git clone https://github.com/kchan5071/lpl-hackathon-website.git

echo "web server clone complete\n" >> /var/log/startup/log.txt


# Install the required packages
sudo apt-get update

echo "apt-get update complete\n" >> /var/log/startup/log.txt

#install python
sudo apt-get install -y python3 python3-pip python3-venv

echo "python installed\n" >> /var/log/startup/log.txt

#install aws cli
sudo snap install aws-cli --classic

echo "snap installed\n" >> /var/log/startup/log.txt


#install webserver stuff
sudo apt install -y nodejs

echo "installed nodejs\n" >> /var/log/startup/log.txt

sudo apt install -y mariadb-server

echo "installed mariadb-server\n" >> /var/log/startup/log.txt

sudo apt install -y mysql-server

echo "installed mysql-server\n" >> /var/log/startup/log.txt

sudo apt install -y apache2

echo "apache2\n" >> /var/log/startup/log.txt

sudo apt install -y php php-fpm

echo "php\n" >> /var/log/startup/log.txt

sudo apt install -y htop

echo "htop\n" >> /var/log/startup/log.txt

mkdir -p AI-sandbox
mv requirements.txt AI-sandbox
cd AI-sandbox

# Create a virtual environment
python3 -m venv AI-sandbox-env

echo "virtual python environment created\n" >> /var/log/startup/log.txt

# Activate the virtual environment
source AI-sandbox-env/bin/activate

# use pip3 to install the required packages
echo "installing requirements.txt\n" >> /var/log/startup/log.txt

pip3 install -r requirements.txt

echo "finished installing requirements.txt\n" >> /var/log/startup/log.txt

#use npm to install the required packages
echo "npm install ws\n" >> /var/log/startup/log.txt
npm install ws

# set alias' for activating and deactivating the virtual environment
echo "alias act="source /home/ubuntu/install_script_AI-ML/AI-sandbox/AI-sandbox-env/bin/activate"" >> ~/.bashrc
echo "alias deact="deactivate"" >> /home/ubuntu/.bashrc

echo "grabbing openai key\n" >> /var/log/startup/log.txt

aws s3 cp s3://stock-dataset-lpl1/openai_key.txt /home/ubuntu/.
