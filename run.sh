#!/bin/bash
set -x

cat /usr/connection/connection | jq .rediss.authentication.password | tr -d '"' > /password/pw

cat /password/pw