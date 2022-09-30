#!/bin/sh

ssh ubuntu@18.130.204.3 /bin/bash <<EOF

npm i --update
npm build
npm run

EOF