ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN apk update && apk add -y --no-cache tcptraceroute bc curl websocat redis && rm -rf /var/cache/apk/*
RUN wget --no-check-certificate https://pingpros.com/pub/tcpping -O /usr/bin/tcpping && chmod +x /usr/bin/tcpping

# Add proxy when on KBT
ENV HTTP_PROXY=lisasqd.nebula.prod:8801 HTTPS_PROXY=lisasqd.nebula.prod:8801 NO_PROXY=127.0.0.0/8,10.0.0.0/8,172.16.0.0/12,192.168.0.0/16

ENTRYPOINT tail -f /dev/null