ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
RUN mkdir -p /tmp /var/tmp /usr/tmp && chmod 777 -R /tmp /var/tmp /usr/tmp

ENV http_proxy="http://lisasqd-dev.nebula.prod:8801" \
    https_proxy="http://lisasqd-dev.nebula.prod:8801" \
    no_proxy=localhost,127.0.0.0,127.0.1.1,127.0.1.1,local.home
# 