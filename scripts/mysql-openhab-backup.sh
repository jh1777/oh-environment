#!/bin/bash
DATABASE_NAME="openhab"
OUTPUT_FILE=/home/pi/mysql/mysqldb-openhab-$(date +%Y%m%d).bz2

DATABASE_NAME_2="ohdwh"
OUTPUT_FILE_2=/home/pi/mysql/mysqldb-ohdwh-$(date +%Y%m%d).bz2

mysqldump --defaults-file=/etc/mysql/my.cnf --user=ohuser --password=oh1account $DATABASE_NAME | bzip2 > $OUTPUT_FILE
mysqldump --defaults-file=/etc/mysql/my.cnf --user=ohuser --password=oh1account $DATABASE_NAME_2 | bzip2 > $OUTPUT_FILE_2