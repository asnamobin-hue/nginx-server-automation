# Automated Nginx Server Setup on AWS EC2

## What this project does
A bash script that automatically sets up a web server on a fresh AWS EC2 instance — 
no manual steps needed. Run one script and your website is live.

## Tech used
- AWS EC2 (Ubuntu)
- nginx
- Bash scripting
- Linux
- html

## What I learned
- How to automate server setup using shell scripting
- How to use systemctl to manage services
- How to fetch a server's public IP dynamically using curl
- Why automation matters — what took an hour manually now takes seconds

## How to replicate
1. Launch an EC2 instance (Ubuntu) on AWS
2. Open port 80 in security group inbound rules
3. SSH into the instance
4. Clone this repo: `git clone https://github.com/asnamobin-hue/nginx-server-automation`
5. Give script permission: `chmod +x setup.sh`
6. Run it: `./setup.sh`
7. Visit the URL printed at the end

## Project structure
- `setup.sh` — main automation script
- `index.html` — webpage served by nginx
