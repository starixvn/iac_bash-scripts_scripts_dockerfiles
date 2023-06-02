ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
# FIX Medium Vuln
RUN apk update && apk add --no-cache curl busybox-extras \ 
    libcrypto3=3.0.9-r1 libssl3=3.0.9-r1 \
    && rm -rf /var/cache/apk/*

