#!/bin/sh

ssh ubuntu@18.130.204.3 /bin/bash <<EOF
sudo apt update
sudo apt install curl -y
curl https://get.docker.com/ | sudo bash
sudo usermod -aG docker ubuntu
git clone https://gitlab.com/Reece-Elder/devops-m5-nodeproject.git
EOF
echo "Yay, it ran!"