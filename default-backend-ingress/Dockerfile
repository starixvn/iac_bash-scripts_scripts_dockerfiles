ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN apt-get update && apt-get install -y --no-install-recommends gettext-base

# Cleanup default config
RUN rm /etc/nginx/conf.d/*


# Copy HTML templates
COPY default-backend-ingress/custome-page/404.html.template /usr/share/nginx/html/
COPY default-backend-ingress/hello.conf /etc/nginx/conf.d/
# Copy entrypoint script
COPY entrypoint.sh /

# Set permissions
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]