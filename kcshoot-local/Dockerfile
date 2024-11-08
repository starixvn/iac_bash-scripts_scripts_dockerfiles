ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN apk update && apk add -y --no-cache tcptraceroute bc curl websocat redis && rm -rf /var/cache/apk/*
RUN wget --no-check-certificate https://pingpros.com/pub/tcpping -O /usr/bin/tcpping && chmod +x /usr/bin/tcpping


ENTRYPOINT tail -f /dev/null