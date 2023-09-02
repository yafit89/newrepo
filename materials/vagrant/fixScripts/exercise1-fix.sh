#!/bin/bash# package updates
sudo yum check-update
sudo yum update # apache installation, enabling and status check
sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
