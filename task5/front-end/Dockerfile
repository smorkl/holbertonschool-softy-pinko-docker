# Use the latest Nginx as the base image
FROM nginx:latest

# Copy local files to the container
COPY ./softy-pinko-front-end /var/www/html/softy-pinko-front-end/

# copy the Nginx configuration file to the default configuration location
COPY ./softy-pinko-front-end.conf /etc/nginx/conf.d/default.conf