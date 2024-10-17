#!/usr/bin/env sh

/vault-snapshot.sh
if [ $? -ne 0 ]; then
	msg="{{Error}} Backup Failed for {{BeginBold}}${VAULT_ADDR}{{EndBold}}{{NewLine}}Job execute at $(date +%F-%H%M)"
	/alert.sh ${ALERT_GROUP_ID} $msg
fi
