ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
# FIX CRITICAL, HIGH, MEDIUM Vuln
RUN apt-get update && apt-get install -y --no-install-recommends  \
    iputils-ping wget tcptraceroute bc \
    curl telnet libgdiplus fonts-indic libfontconfig1 smbclient  \
    dpkg=1.19.8 libc-bin=2.28-10+deb10u2 libc6=2.28-10+deb10u2 libssl1.1=1.1.1n-0+deb10u5 \
    libtasn1-6=4.13-3+deb10u1 openssl=1.1.1n-0+deb10u5 zlib1g=1:1.2.11.dfsg-1+deb10u2 \
    gzip=1.9-3+deb10u1  libgnutls30=3.6.7-4+deb10u10  libgssapi-krb5-2=1.17-3+deb10u5 \
    libk5crypto3=1.17-3+deb10u5 libkrb5-3=1.17-3+deb10u5 libkrb5support0=1.17-3+deb10u5 \
    liblzma5=5.2.4-1+deb10u1 libncursesw6=6.1+20181013-2+deb10u3 libsystemd0=241-7~deb10u9 \
    libtinfo6=6.1+20181013-2+deb10u3 libudev1=241-7~deb10u9  ncurses-base=6.1+20181013-2+deb10u3 ncurses-bin=6.1+20181013-2+deb10u3 \
    gpgv=2.2.12-1+deb10u2  libbz2-1.0=1.0.6-9.2~deb10u2 tzdata=2021a-0+deb10u11 && \
    rm -rf /var/lib/apt/lists/*
RUN wget https://pingpros.com/pub/tcpping -O /usr/bin/tcpping && chmod +x /usr/bin/tcpping
ENV COMPlus_EnableDiagnostics=0
