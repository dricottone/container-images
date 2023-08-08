FROM docker.io/library/alpine:latest

COPY syslog-ng.conf /etc/syslog-ng/syslog-ng.conf

RUN apk add --no-cache syslog-ng

EXPOSE 514/udp
EXPOSE 601/tcp

ENTRYPOINT ["/usr/sbin/syslog-ng", "-F"]

