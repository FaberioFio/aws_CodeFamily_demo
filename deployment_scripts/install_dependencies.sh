#!/bin/bash
chown -R ubuntu:ubuntu /home/ubuntu/app
cd /home/ubuntu/app

# Install Node.js
if ! command -v npm &> /dev/null; then
  curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
  apt-get install -y nodejs
fi

sudo -u ubuntu npm install
npm install -g pm2
