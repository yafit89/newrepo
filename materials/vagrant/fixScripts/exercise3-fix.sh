#!/bin/bash
cd /etc/apache2/sites-enabled
vi 000-default
change to "require all granted"
sudo systemctl restart apache2
