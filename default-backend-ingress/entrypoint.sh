#!/bin/sh

# Substitute environment variables in HTML templates
envsubst '${CLUSTER_NAME}' < /usr/share/nginx/html/404.html.template > /usr/share/nginx/html/404.html


# Start NGINX
exec "$@"