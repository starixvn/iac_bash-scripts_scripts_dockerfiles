ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

# RUN apk update && apk add -y --no-cache tcptraceroute bc curl websocat && rm -rf /var/cache/apk/*
RUN apt update && apt install -y --no-install-recommends vim tcptraceroute bc curl wget unzip && \
	rm -rf /var/lib/apt/lists/*
RUN wget --no-check-certificate https://pingpros.com/pub/tcpping -O /usr/bin/tcpping && chmod +x /usr/bin/tcpping

## Install aws-cli
RUN \
	curl --insecure "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
	unzip awscliv2.zip && rm awscliv2.zip && \
	./aws/install

## Install vault-cli
# RUN \
# 	cd /usr/bin && \
# 	wget https://releases.hashicorp.com/vault/1.17.1/vault_1.17.1_linux_amd64.zip && \
# 	unzip vault_1.17.1_linux_amd64.zip && rm vault_1.17.1_linux_amd64.zip LICENSE.txt

ENTRYPOINT tail -f /dev/null