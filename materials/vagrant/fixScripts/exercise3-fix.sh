#!/bin/bash
cd /etc/apache2/sites-available
sudo sed -i '0,/deny from all/{s/deny from all/Allow from all/}' default
sudo service apache2 restart
