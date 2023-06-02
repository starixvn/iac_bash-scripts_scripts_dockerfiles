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
    libssl1.1=1.1.1f-1ubuntu2.17
USER 1997