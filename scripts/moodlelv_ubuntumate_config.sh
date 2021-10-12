#!/bin/bash
# MoodleLV Environment Configuration 1.0
#
# Copyright: 
#   2021 
#   Antonio Rodrigo dos Santos Silva
#
# License: GNU GPL 3.0 or later.

DB='c2moodle'
DBUSER='c2helpclass'
DBPASS='abcd1234'

# Make sure only root can run our script
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

clear

echo "Removing packages"
apt-get remove -y --purge libreoffice\*
apt-get remove -y --purge \
  thunderbird \
  thunderbird-dbg \
  thunderbird-dev \
  thunderbird-globalmenu \
  thunderbird-gnome-support \
  gnome-orca \
  cups \
  bc \
  eject \
  manpages \
  ppp \
  shotwell \
  transmission \
  brasero \
  cheese \
  hexchat \
  rhythmbox \
  pidgin

apt autoremove



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

echo "Create database $DB"

sudo mysql -u root <<MYSQL_SCRIPT
CREATE DATABASE $DB CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE USER $DBUSER@'127.0.0.1' IDENTIFIED BY '$DBPASS';
GRANT ALL ON $DB.* TO $DBUSER@'127.0.0.1';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

echo "Directory permissions"
sudo usermod -a -G www-data root
sudo usermod -a -G www-data $TERMINALUSER

