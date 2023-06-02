ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
# FIX Medium Vuln
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl telnet libgdiplus fonts-indic libfontconfig1 smbclient fonts-indic && \
    rm -rf /var/lib/apt/lists/*

