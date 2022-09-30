#!/bin/sh

ssh ubuntu@18.130.204.3 <<EOF
sudo apt update
sudo apt install curl -y
curl https://get.docker.com/ | sudo bash
sudo usermod -aG docker $(whoami)
sudo reboot
docker build -t my-nginx nginx
docker run --name my-nginx -d -p 80:80 my-nginx 

echo "Yay, it ran!"
EOF