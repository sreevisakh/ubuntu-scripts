#!/usr/bin/sh
FILE="website_$(date +%b)_$(date +%d)_$(date +%Y).sql"
P="/home/sv/scripts/db_backups/local/"
Q="/home/sv/scripts/db_backups/"
echo "Taking Backup of local DB"
mysqldump --verbose -u presto -ppr3st0 "website"> $P$FILE
echo "Started downloading db from qa"
mysqldump --verbose -h qa.creyate.com -u presto -ppr3st0 "website"> $Q$FILE
echo "Create Dump from qa"
mysql -u presto -ppr3st0 -e "
DROP DATABASE website;
CREATE DATABASE website;
use website;
source $Q$FILE"
echo "Import Finished"
