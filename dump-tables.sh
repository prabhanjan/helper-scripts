#!/bin/bash
GIT_MYSQL=/var/www/db
for T in `mysql -u techshu -p'{PASSWORD}' -N -B -e 'show tables from {DATABASE}'`;
do
    echo "Backing up $T"
    mysqldump --skip-comments --compact --no-data -u techshu -p'{PASSWORD}' {DATABASE} $T | sed 's/ AUTO_INCREMENT=[0-9]*//g' | sed 's/ CHARSET=[0-9,a-z]*//g' > $GIT_MYSQL/$T.sql
done;
