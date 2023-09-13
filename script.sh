#!/bin/bash
sudo su
yum -y update
yum -y install apache2
cat <<EOF > /var/www/html/index.html
<html><body><h1>Welcome to MI Institute...!</h1></body></html>