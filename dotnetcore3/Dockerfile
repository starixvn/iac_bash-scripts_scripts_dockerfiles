ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
# FIX Medium Vuln
RUN apk update && apk add --no-cache curl busybox-extras openssl openssl icu-libs tzdata bc tcptraceroute \
    libcom_err=1.46.6-r0 libcrypto1.1=1.1.1u-r1 libssl1.1=1.1.1u-r1 && \
    rm -rf /var/cache/apk/*
RUN wget https://pingpros.com/pub/tcpping -O /usr/bin/tcpping && chmod +x /usr/bin/tcpping
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false
ENV TZ=Asia/Ho_Chi_Minh