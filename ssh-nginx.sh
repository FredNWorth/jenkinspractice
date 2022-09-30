#!/bin/sh

ssh ubuntu@18.130.204.3 /bin/bash <<EOF
sudo apt update
sudo apt install curl -y
curl https://get.docker.com/ | sudo bash
sudo usermod -a -G docker ubuntu
docker pull nginx
docker run --name my-nginx -d -p 80:80 nginx

echo "Yay, it ran!"
EOF