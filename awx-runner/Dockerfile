ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

USER root
COPY awx-runner/requirements.yml collection/requirements.yml
RUN ansible-galaxy collection install -r collection/requirements.yml -p /usr/share/ansible/collections/ansible_collections && rm -rf collection
USER 1000