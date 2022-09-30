#!/bin/sh

ssh ubuntu@18.130.204.3 <<EOF

docker build -t -p 80:80 my-nginx nginx
docker run my-nginx

echo "Yay, it ran!"
EOF