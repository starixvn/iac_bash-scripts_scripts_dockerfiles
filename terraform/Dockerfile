ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
# FIX  CRITICAL, HIGH Vulnerability
# RUN apk update && apk add ansible aws-cli jq openssh=9.1_p1-r3 openssh-client-common=9.1_p1-r3 curl \
#     openssh-client-default=9.1_p1-r3 openssh-keygen=9.1_p1-r3 openssh-server=9.1_p1-r3 \
#     openssh-server-common=9.1_p1-r3 openssh-sftp-server=9.1_p1-r3  \
#     ncurses-libs=6.3_p20221119-r1 ncurses-terminfo-base=6.3_p20221119-r1 git=2.38.5-r0 \
#     libcurl=8.1.2-r0 libcrypto3=3.0.9-r1 libssl3=3.0.9-r1  && \
#     rm -rf /var/cache/apk/*



RUN apk update && apk add ansible aws-cli jq unzip curl openssh=9.1_p1-r4 openssh-client-common=9.1_p1-r4 \
        openssh-client-default=9.1_p1-r4 openssh-keygen=9.1_p1-r4 openssh-server=9.1_p1-r4 \
        openssh-server-common=9.1_p1-r4 openssh-sftp-server=9.1_p1-r4 \
        ncurses-libs=6.3_p20221119-r1 ncurses-terminfo-base=6.3_p20221119-r1 git=2.38.5-r0 && \
        rm -rf /var/cache/apk/*
RUN curl https://releases.hashicorp.com/vault/1.15.2/vault_1.15.2_linux_386.zip --output vault.zip && unzip vault.zip \
        rm -rf /var/cache/apk/*