ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
# FIX Medium Vuln
RUN apk update && apk add --no-cache \
    libcom_err=1.46.6-r0 libcrypto1.1=1.1.1u-r1 libssl1.1=1.1.1u-r1 && \
    rm -rf /var/cache/apk/*
