# Project 6: Two EC2 Instances Talking

## What I Did
Made Server A (client) request data from Server B (server) using private IP addresses.

## Architecture
- **Server A**: Client that makes requests (uses curl)
- **Server B**: Server that responds (uses nginx)

## Commands Used

### On Server B (Responder)
sudo apt update
sudo apt install nginx -y
sudo nano /var/www/html/index.html

# typed: Hello from b

### On Server A (Requester)
sudo apt update
sudo apt install curl -y
curl http://<server-b-private-ip>/

###Security Group Rule Added

Type: HTTP

Port: 80

Source: 172.31.0.0/16 (AWS default private IP range)

### What I Learned

Servers can communicate using private IPs (faster + more secure than public IPs)

Security group must allow traffic between private IP ranges

curl is a tool for making HTTP requests from command line



