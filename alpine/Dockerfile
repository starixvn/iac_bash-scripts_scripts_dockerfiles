ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN apk update && apk add --no-cache --upgrade git grep curl coreutils yamllint wget tar jq curl
USER root
ENV DEFECTDOJO_URL="https://defectdojo.nexdev.net/" \
    DEFECTDOJO_API_TOKEN="d2bfdd670a2f1714475ea18f54989064b632dd9b123dfd"

# USER 1001:1001
