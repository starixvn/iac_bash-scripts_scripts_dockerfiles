ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
# FIX  CRITICAL, HIGH Vulnerability

RUN apk update && apk upgrade && \
        apk add ansible aws-cli jq  curl unzip && \
        rm -rf /var/cache/apk/*

RUN wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_386.zip -O vault.zip && \
        unzip vault.zip && \
        mv vault /usr/bin/vault && \
        chmod +x /usr/bin/vault
