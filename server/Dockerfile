# server/Dockerfile
FROM node:18-alpine

WORKDIR /app

# install prod deps only
COPY package*.json ./
RUN npm install

# add the app code
COPY . .

ENV NODE_ENV=production
ENV PORT=5000
EXPOSE 5000

CMD ["node", "server.js"]
