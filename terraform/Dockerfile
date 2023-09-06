ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
# FIX  CRITICAL, HIGH Vulnerability
RUN apk update && apk add ansible awscli jq openssh=9.1_p1-r3 openssh-client-common=9.1_p1-r3 curl \
    openssh-client-default=9.1_p1-r3 openssh-keygen=9.1_p1-r3 openssh-server=9.1_p1-r3 \
    openssh-server-common=9.1_p1-r3 openssh-sftp-server=9.1_p1-r3  \
    ncurses-libs=6.3_p20221119-r1 ncurses-terminfo-base=6.3_p20221119-r1 git=2.38.5-r0 \
    libcurl=8.1.2-r0 libcrypto3=3.0.9-r1 libssl3=3.0.9-r1  && \
    rm -rf /var/cache/apk/*