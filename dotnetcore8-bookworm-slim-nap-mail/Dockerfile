ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
RUN apt-get update && apt-get install -y --no-install-recommends  \
    iputils-ping wget tcptraceroute bc tzdata \
    curl telnet libgdiplus fonts-indic libfontconfig1 smbclient && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://pingpros.com/pub/tcpping -O /usr/bin/tcpping && chmod +x /usr/bin/tcpping

RUN sed -i 's/^Components: main$/& contrib/' /etc/apt/sources.list.d/debian.sources
RUN apt-get update && apt-get install -y ttf-mscorefonts-installer fontconfig
RUN fc-cache -f -v
 
RUN apt-get install -y libgdiplus

ENV COMPlus_EnableDiagnostics=0
#

