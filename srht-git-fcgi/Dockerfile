FROM registry.intra.dominic-ricottone.com/fcgi:latest

VOLUME /var/lib/git

# user `git` should be created with PID=100:GID=101
RUN addgroup -S git
RUN adduser -SD -h /var/lib/git -s /bin/sh -G git -g git git

RUN apk add --no-cache git-daemon

USER git

