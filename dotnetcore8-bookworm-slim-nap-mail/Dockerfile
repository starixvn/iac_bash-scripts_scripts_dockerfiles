ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
RUN apt-get update && apt-get install -y --no-install-recommends  \
    iputils-ping wget tcptraceroute bc tzdata \
    curl telnet libgdiplus fonts-indic libfontconfig1 smbclient && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://pingpros.com/pub/tcpping -O /usr/bin/tcpping && chmod +x /usr/bin/tcpping
ENV COMPlus_EnableDiagnostics=0

