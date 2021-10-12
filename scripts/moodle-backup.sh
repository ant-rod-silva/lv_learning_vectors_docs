# Moodle Site Backup version 1.1
# Copyright 2005-2021 TNG Consulting Inc (www.tngconsulting.ca) / Antonio Rodrigo dos Santos Silva
# Author: Michael Milette
# License: GNU GPL 3.0 or later.
#
# Installation: 
#   Place this script in the APPPATH folder.
#   Run it as "sudo" or with sufficient permissions.
#
# Cron Example:
#   35 0 * * * sudo sh /var/www/moodle/moodle-backup.sh
#
# -------------------------------------------------------------------------------------
# Configuration section - Assumes Moodle's WEBROOT and DATA are under the APPPATH.
# -------------------------------------------------------------------------------------
TIMEZONE="America/Fortaleza"
NOW=$(TZ=":$TIMEZONE" date +%Y-%m-%dT%H-%M-%S)
PHP="/usr/bin/php"
MYSQLDUMP="/usr/bin/mysqldump"
APPPATH="/var/www"
WEBROOT="moodle"
DATA="moodledata"
BACKUPPATH="/var/www/moodlebackups/$NOW"
# Exit script on error.
set -e
cd $APPPATH
mkdir $BACKUPPATH
DBUSER=$(grep CFG-\>dbuser ${APPPATH}/${WEBROOT}/config.php | cut -d \' -f 2)
DBPASS=$(grep CFG-\>dbpass ${APPPATH}/${WEBROOT}/config.php | cut -d \' -f 2)
DBNAME=$(grep CFG-\>dbname ${APPPATH}/${WEBROOT}/config.php | cut -d \' -f 2)
echo
echo "Moodle site backup - Please be patient, this can take a while..."
echo "Start time: $NOW"
echo "Saved in folder: $BACKUPPATH"
echo
pushd $WEBROOT  >/dev/null
echo "Running CRON..."
$PHP admin/cli/cron.php >/dev/null
echo "Clearing Moodle cache..."
$PHP admin/cli/purge_caches.php
popd >/dev/null
echo "Backing up the database..."
$MYSQLDUMP -u ${DBUSER} -p${DBPASS} ${DBNAME} > $BACKUPPATH/moodle.sql
DBUSER=;DBPASS=;DBNAME=

echo "Compressing database backup file..."
zip -jq  $BACKUPPATH/moodle.sql.zip $BACKUPPATH/moodle.sql
rm $BACKUPPATH/moodle.sql

echo "Backing up the Moodle files..."
zip -qr $BACKUPPATH/moodle.zip ${WEBROOT}

echo "Backing up the moodledata files..."
zip -qr $BACKUPPATH/moodledata.zip ${DATA}

echo "================================================"
echo "Moodle Backup Successfully Completed"
echo "================================================"
echo "Started at $NOW"
NOW=$(TZ=":$TIMEZONE" date +%Y-%m-%dT%H-%M-%S)
echo "Completed at $NOW"
echo "Saved in folder: $BACKUPPATH"
echo
echo "Verify that files sizes are about consistent with previous backups:"
ls -l --block-size=M $BACKUPPATH
echo "================================================"
