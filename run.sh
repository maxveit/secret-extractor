#!/bin/bash

echo "ENV_NAME=$ENV_NAME"
echo "MOUNT_PATH=$MOUNT_PATH"
echo "SECRET_PATH=$SECRET_PATH"

SECRET=`cat $MOUNT_PATH | jq $SECRET_PATH | tr -d '"'`

echo "$ENV_NAME=$SECRET" >> /secrets/env_list

ls -la /secrets/
wc -l /secrets/env_list