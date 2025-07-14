#!/bin/bash
# Set ownership supaya proses deployment (oleh root) tidak bikin file root-owned
chown -R ubuntu:ubuntu /home/ubuntu/app
cd /home/ubuntu/app

# Install Node.js
if ! command -v npm &> /dev/null; then
  curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
  apt-get install -y nodejs
fi

# Install dependen
sudo -u ubuntu npm install
npm install -g pm2
