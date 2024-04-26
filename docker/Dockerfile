ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
RUN curl https://gitlab.nexdev.net/josh.tran/open-repo/-/raw/main/gandi_ca.pem >> /etc/ssl/certs/ca-certificates.crt
RUN apk update && apk add --no-cache jq py3-pip gettext openssh && rm -rf /var/cache/apk/*
RUN pip3 install --break-system-packages jinja2-tools
