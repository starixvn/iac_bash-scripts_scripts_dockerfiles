ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

COPY --chmod=660 opensearch/files/internal_users.yml /usr/share/opensearch/config/opensearch-security/internal_users.yml
