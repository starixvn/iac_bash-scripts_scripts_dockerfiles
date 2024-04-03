ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
# FIX  CRITICAL, HIGH Vulnerability

RUN apk update && apk upgrade && \
        apk add ansible aws-cli jq  curl unzip && \
        curl https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_386.zip --output vault.zip && unzip vault.zip \
        rm -rf /var/cache/apk/*
