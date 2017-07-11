#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

>&2 echo " execute credentials replacement in root app user creation script"

sed "s/APP_REALM_PH/$REALM_NAME/" /docker-entrypoint-initdb.d/3_root_app_user.sql > /docker-entrypoint-initdb.d/mysql_tmp_file \
&& cat /docker-entrypoint-initdb.d/mysql_tmp_file > /docker-entrypoint-initdb.d/3_root_app_user.sql

sed "s/ROOT_APP_USER_PH/$ROOT_APP_USER/" /docker-entrypoint-initdb.d/3_root_app_user.sql > /docker-entrypoint-initdb.d/mysql_tmp_file \
&& cat /docker-entrypoint-initdb.d/mysql_tmp_file > /docker-entrypoint-initdb.d/3_root_app_user.sql

sed "s/ROOT_APP_PWD_PH/$ROOT_APP_PWD/" /docker-entrypoint-initdb.d/3_root_app_user.sql > /docker-entrypoint-initdb.d/mysql_tmp_file \
&& cat /docker-entrypoint-initdb.d/mysql_tmp_file > /docker-entrypoint-initdb.d/3_root_app_user.sql


