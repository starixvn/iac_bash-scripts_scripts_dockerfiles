ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
#####################################################

COPY --chmod=755 cert-updater/run.sh /run/run.sh
COPY --chmod=755 cert-updater/alert.sh /run/alert.sh
COPY --chmod=755 cert-updater/vault-authen.sh /run/vault-authen.sh
COPY --chmod=755 cert-updater/vault-update-secret.sh /run/vault-update-secret.sh

USER 1001
CMD ["/run/run.sh"]