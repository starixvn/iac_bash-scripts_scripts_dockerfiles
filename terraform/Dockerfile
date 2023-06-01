ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
RUN apk update && apk add openssh=9.1_p1-r3 openssh-client-common=9.1_p1-r3 \
    openssh-client-default=9.1_p1-r3 openssh-keygen=9.1_p1-r3 openssh-server=9.1_p1-r3 \
    openssh-server-common=9.1_p1-r3 openssh-sftp-server=9.1_p1-r3 && \
    rm -rf /var/cache/apk/*
