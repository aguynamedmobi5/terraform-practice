#!/bin/bash
yum install wget unzip httpd -y
systemctl start httpd
systemctl enable httpd
wget https://www.tooplate.com/zip-templates/2102_constructive.zip
unzip -o 2102_constructive.zip
cp -r 2102_constructive/* /var/www/html
systemctl restart httpd
