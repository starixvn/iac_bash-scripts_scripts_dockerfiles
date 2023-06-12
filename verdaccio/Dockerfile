ARG BASE_IMAGE
FROM $BASE_IMAGE
MAINTAINER NexOps
USER root
RUN apk update && apk add --no-cache \
    libcrypto3=3.0.8-r3 libssl3=3.0.8-r3 openssl=3.0.8-r4 \
    && rm -rf /var/cache/apk/*