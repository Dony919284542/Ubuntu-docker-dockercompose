#!/bin/bash

# 安装 Docker
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker.io

# 安装 Docker Compose
sudo apt-get install -y libffi-dev python3-dev python3-pip
pip3 install docker-compose

# 添加执行权限
sudo chmod +x /usr/local/bin/docker
sudo chmod +x /usr/local/bin/docker-compose
