#!/bin/bash

# Install the required packages
sudo apt-get update
sudo apt-get install -y python3.8
sudo apt-get install -y python3-pip python3-venv

# use pip3 to install the required packages
pip3 install -r requirements.txt