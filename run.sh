#!/bin/bash
set -x

ENV_NAME=QUARKUS_REDIS_PASSWORD
SECRET=`cat /usr/connection/connection | jq .rediss.authentication.password | tr -d '"'`

cp /usr/.env /tmp/.env
sed -i 's/ENV_NAME/'"$ENV_NAME"'/g' /tmp/.env
sed -i 's/SECRET/'"$SECRET"'/g' /tmp/.env

touch /password/test
cp /tmp/.env /password/.env

cat /password/.env

ls -la /password/