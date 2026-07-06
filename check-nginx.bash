#!/bin/bash

echo "Checking nginx service"


if systemctl is-active --quiet nginx
then
	echo "nginx alredy running"
else
	echo "nginx is not running"
	echo "Start nginx"
	systemctl start nginx
	echo "nginx started successfully"
fi
