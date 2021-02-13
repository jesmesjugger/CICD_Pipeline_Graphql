#!/bin/bash
service nginx start
pm2 start -f /usr/share/nginx/html/index.js
