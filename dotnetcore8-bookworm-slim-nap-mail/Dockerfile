ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps


RUN sed -i 's/^Components: main$/& contrib/' /etc/apt/sources.list.d/debian.sources

RUN apt-get update && apt-get install -y --no-install-recommends  \
    iputils-ping wget tcptraceroute bc tzdata ttf-mscorefonts-installer \
    fontconfig curl telnet libgdiplus fonts-indic libfontconfig1 smbclient && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://pingpros.com/pub/tcpping -O /usr/bin/tcpping && chmod +x /usr/bin/tcpping

RUN fc-cache -f

ENV COMPlus_EnableDiagnostics=0
#