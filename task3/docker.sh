#!/usr/bin/env bash

echo "--- Hello ---"

echo "--- Updating packages list ---"
sudo apt-get -qq update
sudo apt-get -qq install curl
echo "--- Installing docker ---"
sudo apt-get -y -qq install docker.io
echo "--- Installing docker-compose ---"
sudo curl -s -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo service docker start
sudo chmod +x /usr/local/bin/docker-compose
sudo groupadd docker
sudo usermod -aG docker vagrant
sudo docker-compose build
sudo docker-compose up -d db
sudo docker-compose up hello-app
sudo apt install python3-pip
sudo pip3 install pre-commit
sudo curl -s -L "https://github.com/pre-commit/pre-commit/releases/download/2.11.1/pre-commit-$(uname -s)-$(uname -m)" -o /usr/local/bin/pre-commit

echo "--- Task done ---"