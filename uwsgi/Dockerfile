FROM alpine:edge

RUN apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/ pypy musl-dev pcre-dev linux-headers gcc
RUN pypy -m ensurepip
RUN pypy -m pip install --upgrade --no-warn-script-location pip wheel

COPY src /var/uwsgi
RUN pypy -m pip install /var/uwsgi

#Note: user `uwsgi` should be created with PID=100:GID=101
RUN addgroup -S uwsgi
RUN adduser -SD -h /var/www -s /sbin/nologin -G uwsgi -g uwsgi uwsgi

USER uwsgi
WORKDIR /var/www
COPY --chown=uwsgi:uwsgi uwsgi.ini /var/www/uwsgi.ini

EXPOSE 9000
CMD ["/usr/lib/pypy/bin/uwsgi", "--ini", "/var/www/uwsgi.ini"]

