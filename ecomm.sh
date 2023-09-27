#!/bin/bash
sudo apt -y update
sudo apt -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo apt -y install git
sudo rm -rf /var/www/html/*
sudo git clone https://github.com/Shravani164/ecomm.git /var/www/html