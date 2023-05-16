#!/bin/bash

# Stop and remove Nginx
sudo systemctl stop nginx
sudo apt-get remove nginx -y

# Stop and remove Redis
sudo systemctl stop redis-server
sudo apt-get remove redis-server -y

# Uninstall PHP 7.4 and 8.2
sudo apt-get remove php7.4 php7.4-fpm php7.4-common php8.2 php8.2-fpm php8.2-common -y
sudo apt-get purge 'php*'
# Stop and remove MySQL
sudo systemctl stop mysql
sudo apt-get remove mysql-server -y

# Remove phpMyAdmin
sudo apt-get remove phpmyadmin -y

# Remove any leftover configuration files
sudo apt-get autoremove -y
sudo apt-get autoclean -y

echo "Uninstallation complete."
