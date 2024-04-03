ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
# FIX  CRITICAL, HIGH Vulnerability

RUN apk update && apk add ansible aws-cli jq curl openssh=9.1_p1-r4 openssh-client-common=9.1_p1-r4 \
        openssh-client-default=9.1_p1-r4 openssh-keygen=9.1_p1-r4 openssh-server=9.1_p1-r4 \
        openssh-server-common=9.1_p1-r4 openssh-sftp-server=9.1_p1-r4 \
        ncurses-libs=6.3_p20221119-r1 ncurses-terminfo-base=6.3_p20221119-r1 git=2.38.5-r0 && \
        rm -rf /var/cache/apk/*
