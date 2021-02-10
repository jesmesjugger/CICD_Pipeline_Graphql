#!/bin/bash
yum update -y
curl -sL https://rpm.nodesource.com/setup_15.x | bash -
yum install nodejs -y
npm i cross-env -g
npm install pm2@latest -g
env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u ec2-user --hp /home/ec2-user
pm2 save
