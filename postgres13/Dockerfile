ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl telnet openssl \
    libssl1.1= 1.1.1n-0+deb11u5 openssl=1.1.1n-0+deb11u4 && \
    rm -rf /var/lib/apt/lists/*