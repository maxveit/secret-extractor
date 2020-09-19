#!/bin/bash

ENV_NAME=QUARKUS_REDIS_PASSWORD

echo "ENV_NAME=$ENV_NAME"
echo "MOUNT_PATH=$MOUNT_PATH"
echo "SECRET_PATH=$SECRET_PATH"

SECRET=`cat $MOUNT_PATH | jq $SECRET_PATH | tr -d '"'`

echo "$ENV_NAME=$SECRET" >> /password/.env

ls -la /password/