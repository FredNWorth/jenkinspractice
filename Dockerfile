FROM node
WORKDIR /node
COPY . .
RUN npm install
ENTRYPOINT [ "/usr/local/bin/node", "index.js" ]
