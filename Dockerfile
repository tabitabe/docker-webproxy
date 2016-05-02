FROM nginx

MAINTAINER Joe Black <joe@valuphone.com>

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443 8443