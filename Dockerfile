FROM node:16.14.2-slim
ENV NODE_VERSION 16.14.2
WORKDIR /opt/node-app
COPY . .
RUN ["npm", "install"]
CMD ["npm", "run", "start:dev"]