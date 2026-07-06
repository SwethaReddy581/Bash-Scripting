#!/bin/bash


echo "Updating Package Repository"
apt update -y

echo "Installing nginx"
apt install nginx -y

echo "Start nginx"
systemctl start nginx 

echo "Enable nginx" 
systemctl enable nginx

echo "Checking the status"
systemctl status nginx --no-pager

echo "nginx installation completed successfully"

