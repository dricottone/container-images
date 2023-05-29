FROM registry.intra.dominic-ricottone.com/srht-core:latest

RUN apk add --no-cache todo.sr.ht py3-srht py3-gunicorn

# user `todo` is created by a post-installation hook in `todo.sr.ht`
# the UID/GID do not matter, so allow the hook to manage it
USER todo

CMD ["gunicorn", "todosrht.app:app", "-b", "127.0.0.1:5003", "-c", "/etc/sr.ht/todo.sr.ht.gunicorn.conf.py"]

