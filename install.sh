#!/bin/bash

# Install the required packages
sudo apt-get update
sudo apt-get install -y python3 python3-pip python3-venv

mkdir -p AI-sandbox
mv requirements.txt AI-sandbox
cd AI-sandbox

# Create a virtual environment
python3 -m venv AI-sandbox-env

# Activate the virtual environment
source AI-sandbox-env/bin/activate

# use pip3 to install the required packages
pip3 install -r requirements.txt