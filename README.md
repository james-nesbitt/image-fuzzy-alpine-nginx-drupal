# image-fuzzy-alpine-nginx-drupal

Fuzzy as in reference to the https://en.wikipedia.org/wiki/The_Mythical_Man-Month book where Fred describes the approach of "write one to throw away" as the best start.

Nginx compiled with PageSpeed optimisation library on Alpine Linux.

Maintained by: Aleksi Johansson <aleksi.johansson@wunder.io>

## Docker

### Image

This image is available publicly at:

- quay.io/wunder/fuzzy-alpine-nginx-drupal : [![Docker Repository on Quay](https://quay.io/repository/wunder/fuzzy-alpine-nginx-drupal/status "Docker Repository on Quay")](https://quay.io/repository/wunder/fuzzy-alpine-nginx-drupal)

### Base

This image is based on the fuzzy-alpine-base image https://github.com/wunderkraut/image-fuzzy-alpine-base.

### Modifications

This image adds the following files:

#### /etc/nginx/nginx.conf

This is a custom nginx configuration:

1. runs as app;
2. include additional configs from `/etc/nginx/conf.d/*.conf`;
3. limit worker connections to 4096.
