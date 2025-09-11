FROM node:18-alpine
WORKDIR /web

# install deps and build
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# when container runs, copy the built files to the host bind-mount
CMD ["sh", "-c", "rm -rf /out/* && cp -r /web/build/* /out"]
