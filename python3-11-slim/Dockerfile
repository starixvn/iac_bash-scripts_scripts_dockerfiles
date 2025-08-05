ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
# FIX Medium Vuln
RUN apt-get update && apt-get install -y --no-install-recommends  \
    iputils-ping wget tcptraceroute bc tzdata \
    curl telnet \ 
    gcc \
    g++ \
    libfreetype6-dev \
    libpng-dev \
    pkg-config && \
    rm -rf /var/lib/apt/lists/*
RUN wget https://pingpros.com/pub/tcpping -O /usr/bin/tcpping && chmod +x /usr/bin/tcpping



