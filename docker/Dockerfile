ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
RUN apk update && apk add --no-cache jq py3-pip gettext openssh && rm -rf /var/cache/apk/*
RUN pip3 install --break-system-packages jinja2-tools
