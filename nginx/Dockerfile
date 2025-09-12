FROM nginx:1.27-alpine

# you have one file: ./nginx/default.conf
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# built by build-client beforehand
COPY client/build /usr/share/nginx/html

# expose http and https 
EXPOSE 80 443
