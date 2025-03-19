ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN apk update && apk add --no-cache curl libcrypto3 libcurl libssl3 \
    nodejs=22.13.1-r0 npm=10.9.1-r0 \
    && rm -rf /var/cache/apk/*

