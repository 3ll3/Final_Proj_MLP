#! /bin/sh
#as w205 user

cd /home/w205/data_files

# Melanie's files
wget https://www.dropbox.com/s/1xqs2ffv1toarfe/mapping.sql -O /home/w205/data_files/mapping.sql
wget https://www.dropbox.com/s/hmaph4z9tfdqoc1/income.sql -O /home/w205/data_files/income.sql


# Melanie's ETL
hive -f /home/w205/data_files/mapping.sql
hive -f /home/w205/data_files/income.sql