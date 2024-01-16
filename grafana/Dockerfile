ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
USER root
RUN apt-get update && \
    apt-get install --no-install-recommends -y nano curl telnet
USER grafana
RUN grafana-cli plugins install alexanderzobnin-zabbix-app
RUN grafana-cli plugins install redis-datasource
RUN grafana-cli plugins install grafana-clock-panel
RUN grafana-cli plugins install grafana-piechart-panel
ENV GF_SECURITY_ADMIN_PASSWORD=RHk^QbNE0C5Q \
    GF_SECURITY_ADMIN_USER=admin
