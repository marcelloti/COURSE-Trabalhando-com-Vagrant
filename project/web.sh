#!/bin/bash
apt-get update
apt-get install apache2 -y

if [ -d "/var/www" ]; then
    rm -r /var/www
    ln -fs /vagrant /var/www
fi