#!/bin/bash

echo "Updating the Packages.. "
apt update -y

echo "Installing Java"
apt install default-jdk -y

echo "Downloading Tomcat"
cd /opt
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.42/bin/apache-tomcat-10.1.42.tar.gz

echo "Extracting Tomcat"
tar -xzf apache-tomcat-10.1.42.tar.gz

echo "Renaming Tomcat Directory"
mv apache-tomcat-10.1.42 tomcat

echo "Starting Tomcat"
/opt/tomcat/bin/startup.sh

echo "Tomcat installation completed successfully"
