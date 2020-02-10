#!/usr/bin/env bash

apt-get update
apt-get install sudo -y
echo "vagrant ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoenv bash
sudo chmod +x /vagrant/atlassian-confluence-7.3.1-x64.bin
sudo /vagrant/atlassian-confluence-7.3.1-x64.bin -q -varfile /vagrant/response.varfile

#mysql

udo apt-get update
sudo apt-get install -y mysql-server

 
sudo mysql -e "SET PASSWORD FOR root@localhost = PASSWORD('123456');"
sudo mysql -e "CREATE DATABASE CONFLUENCE;"
sudo mysql -e "FLUSH PRIVILEGES"
