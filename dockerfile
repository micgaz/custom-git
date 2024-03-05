# Start from the Ubuntu Alpine base image
FROM ubuntu:latest

# Install nginx and openssl
RUN apt-get update && \
    apt-get install -y nginx openssl && \
    rm -rf /var/lib/apt/lists/*

# Create the SSL directory
RUN mkdir -p /etc/nginx/ssl

# Generate self-signed SSL certificate
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -subj "/CN=localhost"

# Expose ports 80 and 443
EXPOSE 80
EXPOSE 443

# Set nginx as the main process
CMD ["nginx", "-g", "daemon off;"]