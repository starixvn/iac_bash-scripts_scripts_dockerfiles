#!/usr/bin/env sh
source /run/vault-authen.sh

ls -1 /secret-volume/ | while read secretName
do 
	vault kv get -field tls.crt -mount nexops certs/${secretName} > /tmp/${secretName}.crt
	if [ $? -eq 2 ]; then
		echo "No value for cert ${secretName} on Vault server"
		echo "[+] Start update new value"
		/run/vault-update-secret.sh ${secretName} || /run/alert.sh ${ALERT_GROUP_ID} ${msg}
	else
		cmp /secret-volume/${secretName}/tls.crt /tmp/${secretName}.crt
		if [ $? -eq 1 ]; then
			msg="{{Error}}{{Error}}{{Error}} Failed to update vault secrets{{NewLine}}{{BeginBold}}  Cert{{EndBold}}: ${secretName}{{NewLine}}  Timestamp: $(date +%F-%H%M)"
			/run/vault-update-secret.sh ${secretName} || /run/alert.sh ${ALERT_GROUP_ID} ${msg}
		fi
	fi
done