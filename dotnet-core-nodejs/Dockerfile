ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN apt-get update && apt-get install -y --no-install-recommends \
    iputils-ping wget tcptraceroute bc tzdata curl telnet \
    nodejs=20.15.1-r0 npm=10.9.1-r0 && \
    rm -rf /var/lib/apt/lists/*
RUN wget https://pingpros.com/pub/tcpping -O /usr/bin/tcpping && chmod +x /usr/bin/tcpping
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false \
    COMPlus_EnableDiagnostics=0