ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

COPY haproxy/errors-file/ /etc/haproxy/errors/

RUN apt-get update && \
    apt-get install --no-install-recommends -y vim telnet dnsutils git ssh
