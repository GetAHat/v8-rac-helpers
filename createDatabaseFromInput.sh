#####################################
##### Andrey Fomin <andref@rarus.ru>
#####
##### This script is intended to be started from any directory.
##### However, you should specify v8 platform path from where RAC client will be started.
#####
##### It's usually /opt/1C/v8.3/x86_64/ for 8.3.17 and older
##### and /opt/1cv8/x86_64/8.3.x.x/ for 8.3.18 and newer.
#####
##### You are permitted to copy, modify and redistribute this script or its parts freely
##### but please keep this credit message.
#####################################

#!/bin/sh

clusterid= # add cluster id here
platform_path=/opt/1C/v8.3/x86_64
db_server= # add db server addr here. If it doesn't use standart port, you can specify it with "127.0.0.1 port=1433"
ras_addr= # add ras server to connect to like this: 127.0.0.1:1545

# Auth data for mssql
db_user= # add mssql username here
db_passwd= # add mssql user password here

db_description="CreatedWithScript" # you can provide any description you like. Mind the spaces. Or rather lack of.

rac=$platform_path/rac


printf "This is a simple script to automate db creation in 1cv8.\n"
printf "***ADD YOUR PARAMETERS BEFORE USING IT***\n\n"

printf "Enter DB name (will be used for IB && DB):\n\n"

read database_name

    printf "\nv8 base will be called $database_name\n"
    printf "mssql db will be called $database_name\n\n"

    $rac infobase $ras_addr --cluster=$clusterid create \
        --create-database \
        --name=$database_name \
        --dbms=MSSQLServer \
        --db-server=$db_server \
        --db-name=$database_name \
        --db-user=$db_user \
        --db-pwd=$db_passwd \
        --locale=RU \
        --descr=$db_description \
        --date-offset=2000 \


