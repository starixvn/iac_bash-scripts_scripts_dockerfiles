ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps


# RUN sed -i 's/^Components: main$/& contrib/' /etc/apt/sources.list.d/debian.sources

RUN apt-get update && apt-get install -y --no-install-recommends  \
    iputils-ping wget tcptraceroute bc tzdata \
    ttf-mscorefonts-installer fontconfig curl telnet libgdiplus \
    fonts-indic libfontconfig1 smbclient libicu72 libc6 libx11-6 libx11-data && \
    rm -rf /var/lib/apt/lists/* && \
    fc-cache -f

RUN curl -L -Ss "https://github.com/cloverstd/tcping/releases/download/v0.1.1/tcping-linux-amd64-v0.1.1.tar.gz" -o "/tmp/tcping-linux.tgz" \
    && tar zxf /tmp/tcping-linux.tgz -C /usr/local/bin \
    && chown root:root /usr/local/bin/tcping && chmod +x /usr/local/bin/tcping

ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false \
    COMPlus_EnableDiagnostics=0