FROM docker.io/library/haproxy:alpine

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg", "-f", "/usr/local/etc/haproxy.d"]

