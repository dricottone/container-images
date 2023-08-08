#!/bin/sh
sed -i /usr/local/etc/haproxy/haproxy.cfg -e "s/^  log 127.0.0.1:514/  log ${LOGDEST}/"

su-exec haproxy "$@"

