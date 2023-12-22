#!/bin/bash
yum update -y
yum install -y httpd 
systemctl start httpd
systemctl enable httpd
yum update -y
echo "<h1> Developer-Environment ! Welcome to MI Institute </h1>" > /var/www/html/index.html
