ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
USER root
RUN apk update && apk add --no-cache --upgrade git grep curl coreutils yamllint wget tar jq curl
# USER 1001:1001
