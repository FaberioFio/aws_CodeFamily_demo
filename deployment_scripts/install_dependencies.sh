#!/bin/bash
cd /home/ubuntu/app

# Install Node.js & npm if not present
if ! command -v npm &> /dev/null; then
  curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
  apt-get install -y nodejs
fi

# Install dependencies
npm install
npm install -g pm2
