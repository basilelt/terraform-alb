#!/bin/bash
# User Data for new EC2 instances
# Install httpd (linux 2 version)
yum install -y httpd vim
yum update -y
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello World ! This is $(hostname -f)</h1>" > /var/www/html/index.html



