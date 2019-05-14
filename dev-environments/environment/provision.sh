#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install nginx -y
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y


npm install pm2 -g
sudo systemctl start nginx
npm install express
npm install mongoose
npm install ejs

cd /app
pm2 start app.js
