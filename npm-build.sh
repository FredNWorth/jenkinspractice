#!/bin/sh

ssh ubuntu@18.130.204.3 /bin/bash <<EOF

git clone https://gitlab.com/Reece-Elder/devops-m5-nodeproject.git
npm i --update
npm build
npm run

EOF