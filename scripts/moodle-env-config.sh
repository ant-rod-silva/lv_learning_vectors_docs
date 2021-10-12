#!/bin/bash

# Make sure only root can run our script
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

clear

echo "Removing packages"
apt-get remove -y --purge libreoffice\*

echo "Apt update";
apt-get update
apt-get upgrade -y

echo "Installing requirements";
apt-get install -y \
  curl \
  git \
  aptitude \
  mlocate \
  zip \
  unzip \
  unrar \
  libpcre3 \
  libprcre3-dev \
  graphviz \
  aspell \
  ghostscript \
  software-properties-common

echo "Installing Lamp server";
apt-get install -y \
  apache2 \
  mariadb-server \
  php \
  php-common \
  php-cli \
  php-fpm \
  php-mbstring \
  php-xmlrpc \
  php-soap \
  php-gd \
  php-xml \
  mariadb-server \
  php \
  php-common \
  php-cli \
  php-fpm \
  php-mbstring \
  php-xmlrpc \
  php-soap \
  php-gd \
  php-xml \
  php-intl \
  php-mysql \
  php-zip \
  php-curl \
  libapache2-mod-php \
  php-json

echo "Changing permissions";
usermod -aG www-data operador
usermod -aG www-data root

echo "Setting log files";
sudo mkdir /var/log/moodle
service apache2 restart
service mariadb restart

echo "Configuring apache server";
a2dissite 000-default
service apache2 reload

