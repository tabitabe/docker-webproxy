FROM nginx

MAINTAINER joe <joe@valuphone.com>

LABEL   os="linux" \
        os.distro="debian" \
        os.version="jessie"

LABEL   app.name="nginx" \
        app.version="1.11.3"

ENV     NGINX_VERSION=1.11.3

ENV     HOME=/opt/nginx
ENV     PATH=$HOME:$PATH

COPY    setup.sh /tmp/setup.sh
RUN     /tmp/setup.sh

COPY    nginx.conf /etc/nginx/nginx.conf

COPY    entrypoint /usr/bin/entrypoint

EXPOSE 80 443 8443

ENV     NGINX_LOG_LEVEL=info

# USER    nginx

WORKDIR /opt/nginx

CMD     ["/usr/bin/entrypoint"]
