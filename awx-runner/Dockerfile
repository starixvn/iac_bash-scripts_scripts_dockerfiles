ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

COPY requirements.yml /tmp/requirements.yml
RUN ansible-galaxy install -r /tmp/requirements.yml 