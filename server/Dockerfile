# using node 18 to run express 
FROM node:18-alpine

WORKDIR /app

# install prod deps only
COPY package*.json ./
RUN npm install

# add the app code
COPY . .

# expose port 5000 currently it is coded into the server as default port 
EXPOSE 5000

# entry point to express server 
CMD ["node", "server.js"]
