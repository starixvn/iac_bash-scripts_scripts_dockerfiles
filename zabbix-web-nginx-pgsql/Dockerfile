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
    libssl1.1=1.1.1f-1ubuntu2.19 \
    libxpm4=1:3.5.12-1.1