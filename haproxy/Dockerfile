ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL org.opencontainers.image.authors="NexOps"
RUN apt-get update && \
    apt-get install --no-install-recommends -y nano curl telnet
USER haproxy
