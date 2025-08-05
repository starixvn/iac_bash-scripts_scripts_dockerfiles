ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN apk update && apk add --upgrade --no-cache jq py3-pip gettext git skopeo curl bash busybox  && rm -rf /var/cache/apk/*
RUN pip3 install --break-system-packages jinja2-tools
RUN curl https://ssl-tools.net/certificates/a5e9a8a42b691c08bd9ee5d686dd69c3714498dd.pem >> /etc/ssl/certs/ca-certificates.crt
