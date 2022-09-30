#!/bin/sh

ssh ubuntu@18.130.204.3 /bin/bash <<EOF
sudo apt update
sudo apt install curl -y
curl https://get.docker.com/ | sudo bash
sudo usermod -aG docker ubuntu
docker pull node
docker run --name my-node -d -p 5000:5000 node
sudo apt install nodejs npm
echo "Yay, it ran!"
EOF