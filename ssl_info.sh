#/bin/bash

if [[ -z $1 ]]; then
  echo "Provide domain argument."
  echo "./ssl_info.sh <www.domain.com:443>"
else
  openssl s_client -showcerts -connect $1
fi
