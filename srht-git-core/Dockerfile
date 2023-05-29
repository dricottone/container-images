FROM registry.intra.dominic-ricottone.com/srht-core:latest

# user `git` should be created with PID=100:GID=101
RUN addgroup -S git
RUN adduser -SD -h /var/lib/git -s /bin/sh -G git -g git git

VOLUME /var/lib/git
RUN chown git:git /var/lib/git

RUN apk add --no-cache git.sr.ht py3-srht py3-gunicorn

USER git

ENV HOME=/var/lib/git

CMD ["gunicorn", "gitsrht.app:app", "-b", "127.0.0.1:5001", "-c", "/etc/sr.ht/git.sr.ht.gunicorn.conf.py"]

