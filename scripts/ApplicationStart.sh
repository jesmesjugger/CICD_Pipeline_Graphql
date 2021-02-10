#!/bin/bash
service nginx start
cd /usr/share/nginx/html
pm2 start index.js
