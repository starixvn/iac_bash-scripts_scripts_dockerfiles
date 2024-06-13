ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN bin/logstash-plugin install logstash-codec-cloudtrail
RUN bin/logstash-plugin install logstash-input-s3
RUN bin/logstash-plugin install logstash-codec-cloudwatch_logs
RUN bin/logstash-plugin install logstash-output-opensearch