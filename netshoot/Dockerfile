ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN apt update && apt-get install -y --no-install-recommends iputils-ping wget tcptraceroute bc curl telnet dnsutils ncat git wrk luajit ssh-tools vim && rm -rf /var/lib/apt/lists/*
RUN wget --no-check-certificate https://pingpros.com/pub/tcpping -O /usr/bin/tcpping && chmod +x /usr/bin/tcpping