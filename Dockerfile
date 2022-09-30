FROM node:10
WORKDIR /opt/api
COPY . .
RUN npm install
ENTRYPOINT [ "/usr/local/bin/node", "index.js" ]
