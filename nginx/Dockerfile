ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN apk update && apk add --no-cache curl busybox-extras tzdata bc tcptraceroute && \
    rm -rf /var/cache/apk/*

COPY --chmod=755 files/tcping /usr/local/bin/tcping
