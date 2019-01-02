#!/bin/sh

echo "Remove old version..."
sudo yum -y remove docker \
                   docker-client \
                   docker-client-latest \
                   docker-common \
                   docker-latest \
                   docker-latest-logrotate \
                   docker-logrotate \
                   docker-selinux \
                   docker-engine-selinux \
                   docker-engine

echo "Install required packages..."
sudo yum -y install yum-utils device-mapper-persistent-data lvm2

echo "Install Docker repo..."
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

sudo yum -y install docker-ce

sudo systemctl enable docker

sudo systemctl start docker

sleep 1
sudo usermod -aG docker $(whoami)

echo "Install Docker compose..."
sudo yum -y install python-pip
sudo pip install docker-compose

