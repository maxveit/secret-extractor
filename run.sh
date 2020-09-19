#!/bin/bash
set -x

ENV_NAME=QUARKUS_REDIS_PASSWORD
PASSWORD=`cat /usr/connection/connection | jq .rediss.authentication.password | tr -d '"'`

cp /usr/.env /tmp/.env
sed -i 's/ENV_NAME/'"$ENV_NAME"'/g' /tmp/.env
sed -i 's/PASSWORD/'"$PASSWORD"'/g' /tmp/.env

ls -la /
ls -la /password/

touch /password/test
cp /tmp/.env /password/.env

cat /password/.env