ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN apk update && apk add --no-cache --upgrade git grep curl coreutils yamllint wget tar jq curl
USER root
ENV DEFECTDOJO_URL=$DEFECTDOJO_URL \
    DEFECTDOJO_API_TOKEN=$DEFECTDOJO_API_KEY

# USER 1001:1001
