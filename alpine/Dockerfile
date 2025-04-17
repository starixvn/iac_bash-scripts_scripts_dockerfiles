ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
# RUN apk update && apk add --no-cache --upgrade libcrypto3=3.1.4-r5 \
#     libssl3=3.1.4-r5 busybox=1.36.1-r5 busybox-binsh=1.36.1-r5 \
#     ssl_client=1.36.1-r5

RUN apk update && apk add --no-cache --upgrade git grep coreutils

# USER 1001:1001
