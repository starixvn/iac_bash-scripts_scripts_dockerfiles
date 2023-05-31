ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL org.opencontainers.image.authors="NexOps"
RUN apk update && apk add --no-cache jq py3-pip gettext && rm -rf /var/cache/apk/*
RUN pip3 install jinja2-tools