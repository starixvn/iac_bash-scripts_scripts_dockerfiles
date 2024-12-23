ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
# FIX Medium Vuln
RUN echo "deb http://http.us.debian.org/debian stable main contrib non-free" >> /etc/apt/sources.list

RUN apk update && apk add --no-cache curl busybox-extras openssl icu-libs tzdata bc tcptraceroute gcompat \
    && rm -rf /var/cache/apk/*
RUN wget https://pingpros.com/pub/tcpping -O /usr/bin/tcpping && chmod +x /usr/bin/tcpping
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false \
    COMPlus_EnableDiagnostics=0
