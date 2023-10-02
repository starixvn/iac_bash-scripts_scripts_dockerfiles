ARG BASE_IMAGE
FROM $BASE_IMAGE
MAINTAINER NexOps
USER root
RUN apk update && apk add --no-cache \
    libcrypto3=3.0.9-r1 libssl3=3.0.9-r1 openssl=3.0.9-r1 \
    && rm -rf /var/cache/apk/*