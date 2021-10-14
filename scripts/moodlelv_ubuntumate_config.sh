#!/bin/bash
# MoodleLV Environment Configuration 1.0
#
# Copyright: 
#   2021 
#   Antonio Rodrigo dos Santos Silva
#
# License: GNU GPL 3.0 or later.

DB='moodle'
DBUSER='helpclass'
DBPASS='abcd1234'

TERMINALUSER='operador'

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
  php-intl \
  php-mysql \
  php-zip \
  php-curl \
  mariadb-server \
  libapache2-mod-php \
  php-json

echo "Changing permissions";
usermod -aG www-data $TERMINALUSER
usermod -aG www-data root

echo "Configuring apache server";
a2dissite 000-default
service apache2 reload

echo "Create database $DB"

sudo mysql -u root <<MYSQL_SCRIPT
CREATE DATABASE $DB CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE USER $DBUSER@'127.0.0.1' IDENTIFIED BY '$DBPASS';
GRANT ALL ON $DB.* TO $DBUSER@'127.0.0.1';
SET GLOBAL innodb_file_format = BARRACUDA;
SET GLOBAL innodb_large_prefix = ON;
SET GLOBAL innodb_file_per_table = ON;
SET GLOBAL innodb_default_row_format = dynamic;
SET GLOBAL innodb_strict_mode = "ON";
UPDATE mysql.user SET plugin = 'mysql_native_password', authentication_string = PASSWORD('$DBPASS') WHERE User = 'root';
UPDATE mysql.user SET plugin = 'mysql_native_password', authentication_string = PASSWORD('$DBPASS') WHERE User = '$DBUSER';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

echo "Installing mysql-workbench"
apt-get install -y mysql-workbench

echo "Creating Moodle Virtualhost"

echo "#### moodle
<VirtualHost *:80>
ServerName localhost
DocumentRoot /var/www/moodle
<Directory /var/www/moodle>
Options +FollowSymlinks
AllowOverride All
Require all granted
</Directory>
ErrorLog /var/www/moodle/log/error.log
CustomLog /var/www/moodle/log/access.log combined
</VirtualHost>" > /etc/apache2/sites-available/moodle.conf

mkdir -p /var/www/moodle/log
touch /var/www/moodle/log/error.log
touch /var/www/moodle/log/access.log
chown -R www-data:www-data /var/www/moodle
ln -s /etc/apache2/sites-available/moodle.conf /etc/apache2/sites-enabled/moodle.conf
sudo service apache2 restart
