#!/bin/bash

echo "Starting server setup..."

# Update package list
sudo apt update -y

# Install nginx
sudo apt install nginx -y

# Start nginx
sudo systemctl start nginx

# Enable nginx to start on boot
sudo systemctl enable nginx

# Copy the HTML file to the web directory
sudo cp index.html /var/www/html/index.html

# Get the server's IP address
SERVER_IP=$(curl -s ifconfig.me)

echo "Setup complete!"
echo "Your website is at: http://$SERVER_IP"

