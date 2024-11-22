FROM alpine:edge AS builder

RUN apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/ pypy musl-dev linux-headers gcc
RUN pypy -m ensurepip
RUN pypy -m pip install --upgrade --no-warn-script-location pip wheel
RUN pypy -m pip install --no-warn-script-location uwsgi

FROM alpine:edge

RUN apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/ pypy
COPY --from=builder /usr/lib/pypy /usr/lib/pypy

# user `uwsgi` should be created with PID=100:GID=101
RUN addgroup -S uwsgi
RUN adduser -SD -h /var/www -s /sbin/nologin -G uwsgi -g uwsgi uwsgi

USER uwsgi
WORKDIR /var/www
COPY --chown=uwsgi:uwsgi uwsgi.ini /var/www/uwsgi.ini

EXPOSE 9000
CMD ["/usr/lib/pypy/bin/uwsgi", "--ini", "/var/www/uwsgi.ini"]

