FROM docker.io/library/alpine:latest

RUN apk add --no-cache spawn-fcgi fcgiwrap dumb-init

EXPOSE 9000

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["spawn-fcgi", "-p", "9000", "-n", "--", "/usr/bin/fcgiwrap", "-f"]

