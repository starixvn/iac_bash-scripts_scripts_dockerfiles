ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN apt update && apt install -y --no-install-recommends rsyslog logrotate
COPY rsyslog-server/logrotate.conf /etc/logrotate.conf
COPY rsyslog-server/logrotate.rsyslog.conf /etc/logrotate.d/rsyslog
ENTRYPOINT service cron start && bash