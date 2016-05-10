# Dockerfile
FROM node:5

# Create app directory
RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

# Bundle app source
COPY . /usr/src/app

# RUN npm install

EXPOSE 15672

CMD [ "node", "amqpServer.js" ]
