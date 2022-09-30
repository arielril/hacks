#!/bin/bash

PORT=443

if [[ -n $2 ]]
then
  PORT=$2
fi

echo "asdf $1"
echo "adsf $PORT"

openssl s_client -connect "$1:$PORT" | openssl x509 -noout -text | grep DNS

