#/bin/bash

if [[ -z $1 || -z $2 || -z $3 ]]; then
  echo "Provide below arguments - in this order plz :) "
  echo "./ssl_grabber.sh <server_IP> <server_IP:port> <save_to_cert.pem>"
  exit 1
else
  openssl s_client -servername $1 -connect $2 </dev/null | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > $3
fi

