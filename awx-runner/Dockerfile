ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

COPY awx-runner/requirements.yml collection/requirements.yml
RUN ansible-galaxy install -r collection/requirements.yml