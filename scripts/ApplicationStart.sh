#!/bin/bash
service nginx start
pm2 start index.js
