FROM registry.intra.dominic-ricottone.com/srht-core:latest AS builder

RUN apk add --no-cache git.sr.ht meta.sr.ht todo.sr.ht

FROM registry.intra.dominic-ricottone.com/nginx:latest

COPY --from=builder /usr/lib/python3.10/site-packages/gitsrht /var/www/gitsrht/
COPY --from=builder /usr/lib/python3.10/site-packages/metasrht /var/www/metasrht/
COPY --from=builder /usr/lib/python3.10/site-packages/todosrht /var/www/todosrht/

