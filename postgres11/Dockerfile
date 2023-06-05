ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
RUN apt-get update && \
    apt-get install --no-install-recommends -y ca-certificates wget \
    dpkg=1.19.8 \
    rm -rf /var/lib/apt/lists/*
