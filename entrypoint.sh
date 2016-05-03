#!/bin/bash

exec /usr/sbin/pdns_server \
    --launch=gmysql --gmysql-host=db --gmysql-user=$DB_USER --gmysql-dbname=$DB_NAME --gmysql-password=$DB_PASSWORD \
    --webserver=yes --webserver-address=0.0.0.0 --webserver-port=80 \
    --experimental-json-interface=yes --experimental-api-key=$POWERDNS_API_KEY
