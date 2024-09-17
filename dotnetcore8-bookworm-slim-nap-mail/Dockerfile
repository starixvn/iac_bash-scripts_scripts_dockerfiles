ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps


RUN sed -i 's/^Components: main$/& contrib/' /etc/apt/sources.list.d/debian.sources

RUN apt-get update && apt-get install -y --no-install-recommends  \
    iputils-ping wget tcptraceroute bc tzdata ttf-mscorefonts-installer \
    fontconfig curl telnet libgdiplus fonts-indic libfontconfig1 smbclient \
    libicu67 libc6 libx11-6 libx11-data && \
    rm -rf /var/lib/apt/lists/* && \
    fc-cache -f


RUN wget https://pingpros.com/pub/tcpping -O /usr/bin/tcpping && chmod +x /usr/bin/tcpping
ENV COMPlus_EnableDiagnostics=0
