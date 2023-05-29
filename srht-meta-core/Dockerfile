FROM registry.intra.dominic-ricottone.com/srht-core:latest

RUN apk add --no-cache meta.sr.ht py3-srht py3-gunicorn

# user `meta` is created by a post-installation hook in `meta.sr.ht`
# the UID/GID do not matter, so allow the hook to manage it
USER meta

CMD ["gunicorn", "metasrht.app:app", "-b", "127.0.0.1:5000", "-c", "/etc/sr.ht/meta.sr.ht.gunicorn.conf.py"]

