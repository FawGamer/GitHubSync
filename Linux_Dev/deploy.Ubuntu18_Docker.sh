#!/bin/sh
sudo apt-get update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce

sudo apt install docker-ce
sudo systemctl status docker
sudo systemctl start docker
sudo systemctl enable docker

# sudo usermod -aG docker ${USER}
