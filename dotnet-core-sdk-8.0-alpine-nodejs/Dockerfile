ARG BASE_IMAGE
FROM $BASE_IMAGE

LABEL maintainer=NexOps
# FIX Medium Vuln
RUN apk update && apk add --no-cache curl libcrypto3 libcurl libssl3 \
    nodejs=20.15.1-r0 npm=10.9.1-r0