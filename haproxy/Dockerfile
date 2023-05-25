FROM docker.io/library/haproxy:alpine

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

# Overriding the CMD to load all '*.cfg' files in '/usr/local/etc/haproxy.d';
# lexical order, newer files overriding older files
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg", "-f", "/usr/local/etc/haproxy.d"]

