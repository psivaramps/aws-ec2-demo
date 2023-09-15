#!/bin/bash
yum update -y
yum install -y httpd 
systemctl start httpd
systemctl enable httpd
echo "<h1> User-Acceptance-Test Environment ! Welcome to MI Institute </h1>" > /var/www/html/index.html
