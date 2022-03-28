FROM ubuntu
RUN apt-get update
RUN apt-get install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get install -y nodejs
WORKDIR /opt/node-app
COPY . .
RUN [ "npm", "install" ]
RUN [ "npm", "r", "bcrypt" ]
RUN [ "npm", "i", "bcrypt" ]
RUN npm run build
CMD [ "npm", "start" ]