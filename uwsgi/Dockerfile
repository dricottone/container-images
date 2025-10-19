FROM alpine:edge

# Build dependencies
RUN apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/ pypy musl-dev pcre-dev linux-headers gcc
RUN pypy -m ensurepip
RUN pypy -m pip install --upgrade --no-warn-script-location pip wheel

# Build
COPY src /var/uwsgi
RUN pypy -m pip install /var/uwsgi

# Entrypoint
RUN apk add --no-cache su-exec
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

# Create uwsgi user (entrypoint.sh will drop to this user)
RUN addgroup -S uwsgi
RUN adduser -SD -h /var/www -s /sbin/nologin -G uwsgi -g uwsgi uwsgi

# Main program
WORKDIR /var/www
EXPOSE 9000
COPY --chown=uwsgi:uwsgi uwsgi.ini /var/www/uwsgi.ini
CMD ["/usr/lib/pypy/bin/uwsgi", "--ini", "/var/www/uwsgi.ini"]

