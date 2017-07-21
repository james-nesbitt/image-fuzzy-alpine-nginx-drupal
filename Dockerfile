# wunder/fuzzy-alpine-nginx
#
# VERSION v1.12.1

FROM quay.io/wunder/fuzzy-alpine-base:v3.6
MAINTAINER james.nesbitt@wunder.io

RUN apk --update add php7-xdebug && \
    # Cleanup
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/*

# Make our nginx.conf available on the container.
ADD etc/nginx/nginx.conf /etc/nginx/nginx.conf

# Separate the logs into their own volume to keep them out of the container.
VOLUME ["/var/log/nginx"]

# Expose the HTTP and HTTPS ports.
EXPOSE 80 443

# Set nginx directly as the entrypoint.
ENTRYPOINT ["nginx", "-g", "daemon off;"]