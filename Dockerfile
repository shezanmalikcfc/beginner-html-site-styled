# Use a lightweight nginx image as base
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy all website files (HTML, CSS, images) into nginx web directory
COPY . /usr/share/nginx/html

# Nginx already listens on port 80 by default
EXPOSE 80
