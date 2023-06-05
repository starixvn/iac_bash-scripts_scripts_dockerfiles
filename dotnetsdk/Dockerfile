ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
# FIX Medium Vuln
RUN apk update && apk add --no-cache ncurses-terminfo-base=6.3_p20221119-r1 \
    libcrypto3=3.0.9-r1 libssl3=3.0.9-r1 \
    && rm -rf /var/cache/apk/*






