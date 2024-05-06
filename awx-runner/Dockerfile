ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

USER root
COPY awx-runner/requirements.yml collection/requirements.yml
RUN ansible-galaxy install -r collection/requirements.yml
USER 1000