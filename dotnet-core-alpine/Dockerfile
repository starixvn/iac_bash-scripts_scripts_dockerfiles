ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN apk update && apk add --no-cache curl busybox-extras openssl icu-libs tzdata bc tcptraceroute gcompat libcrypto3 libssl3 \
    && rm -rf /var/cache/apk/*

RUN curl -L -Ss "https://github.com/cloverstd/tcping/releases/download/v0.1.1/tcping-linux-amd64-v0.1.1.tar.gz" -o "/tmp/tcping-linux.tgz" \
    && tar zxf /tmp/tcping-linux.tgz -C /usr/local/bin \
    && chown root:root /usr/local/bin/tcping && chmod +x /usr/local/bin/tcping
# RUN wget https://github.com/pouriyajamshidi/tcping/releases/latest/download/tcping-freebsd-amd64-static.tar.gz -O /tmp/tcping-freebsd-amd64-static.tar.gz \
#     && tar -xvf /tmp/tcping-freebsd-amd64-static.tar.gz -C /usr/local/bin \
#     && chown root:root /usr/local/bin/tcping && chmod +x /usr/local/bin/tcping

ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false \
    COMPlus_EnableDiagnostics=0