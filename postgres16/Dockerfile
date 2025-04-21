ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    git build-essential && \
    rm -rf /var/lib/apt/lists/*

# Install Extentions pgvector
RUN cd /tmp && git clone --branch v0.8.0 https://github.com/pgvector/pgvector.git && \
    cd pgvector && make && make install