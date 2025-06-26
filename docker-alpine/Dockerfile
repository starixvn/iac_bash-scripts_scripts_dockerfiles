ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN apk update && apk add --upgrade --no-cache jq py3-pip gettext git skopeo curl bash busybox  && rm -rf /var/cache/apk/*
RUN pip3 install --break-system-packages jinja2-tools
RUN ARGOCD_VERSION="v2.13.0"; curl -sSL -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/download/${ARGOCD_VERSION}/argocd-linux-amd64; chmod +x /usr/local/bin/argocd
RUN curl https://ssl-tools.net/certificates/a5e9a8a42b691c08bd9ee5d686dd69c3714498dd.pem >> /etc/ssl/certs/ca-certificates.crt
