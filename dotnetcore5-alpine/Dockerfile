ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
# FIX Medium Vuln
RUN apk update && apk add --no-cache curl busybox-extras openssl icu-libs tzdata bc tcptraceroute \ 
    libcom_err=1.46.2-r1 libcrypto1.1=1.1.1t-r2  libssl1.1=1.1.1t-r2  zlib=1.2.12-r3 \
    && rm -rf /var/cache/apk/*
RUN wget https://pingpros.com/pub/tcpping -O /usr/bin/tcpping && chmod +x /usr/bin/tcpping
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false
ENV TZ=Asia/Ho_Chi_Minh

