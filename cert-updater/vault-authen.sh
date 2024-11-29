#!/bin/sh
####################################
# authenticate using kubernetes auth
JWT=$(cat /var/run/secrets/kubernetes.io/serviceaccount/token)
export JWT
VAULT_TOKEN=$(vault write -field=token  auth/kubernetes/login role="${VAULT_ROLE}" jwt="${JWT}")
export VAULT_TOKEN