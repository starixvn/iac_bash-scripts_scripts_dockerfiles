#!/usr/bin/env sh

/run/vault-authen.sh

/cert-updater.sh

ls -1 /secret-volume/ | while read line
do 
	vault kv get -field tls.crt -mount nexops certs/${secretName} > /tmp/${secretName}.crt
	cmp /secret-volume/${secretName}/tls.crt /tmp/${secretName}.crt
	if [ $? -eq 1 ]; then
		msg="{{Error}}{{Error}}{{Error}} Failed to update vault secrets{{NewLine}}{{BeginBold}}  Cert{{EndBold}}: ${secretName}{{NewLine}}  Timestamp: $(date +%F-%H%M)"
		/run/vault-update-secret.sh ${secretName} || /run/alert.sh
	fi