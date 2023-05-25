FROM docker.io/library/alpine:latest

COPY dnsmasq.conf /etc/dnsmasq.conf

RUN apk add --no-cache dnsmasq dumb-init

EXPOSE 53 53/udp

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["dnsmasq", "--keep-in-foreground"]

