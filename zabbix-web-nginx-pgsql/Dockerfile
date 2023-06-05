ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
USER root
RUN apt-get update && apt-get install -y \
    curl \
    openssl \
    bc \
    whois \
    ca-certificates \
USER 1997