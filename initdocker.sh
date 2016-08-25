#!/bin/bash

echo "Configuring APT for Docker install..."
sudo apt-key adv --keyserver --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo cp docker.list /etc/apt/sources.list.d/
sudo apt-get update
sudo apt-get purge lxc-docker
sudo apt-cache policy docker-engine
sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual -y

echo "Installing Docker..."
sudo apt-get install docker-engine -y
sudo service docker start

echo "Configuring Docker..."
sudo groupadd docker
sudo usermod -aG docker $USER

echo "Docker install complete."

