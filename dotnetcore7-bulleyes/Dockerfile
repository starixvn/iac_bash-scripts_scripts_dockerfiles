ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
# FIX Medium Vuln
RUN echo "deb http://http.us.debian.org/debian stable main contrib non-free" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y --no-install-recommends  \
    iputils-ping wget tcptraceroute bc tzdata \
    curl telnet libgdiplus fonts-indic libfontconfig1 smbclient \
    ttf-mscorefonts-installer fontconfig libicu67 libc6 \
    libx11-6 libx11-data && \
    rm -rf /var/lib/apt/lists/* && \
    fc-cache -f

RUN wget https://pingpros.com/pub/tcpping -O /usr/bin/tcpping && chmod +x /usr/bin/tcpping
ENV COMPlus_EnableDiagnostics=0
