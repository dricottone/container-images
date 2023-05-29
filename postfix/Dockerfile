FROM docker.io/library/alpine:latest

COPY aliases /etc/postfix/aliases
COPY *.cf /etc/postfix/

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN mkdir /etc/postfix/sasl && chmod 700 /etc/postfix/sasl

RUN addgroup -S mailer
RUN adduser -SD -s /bin/sh -G mailer -g mailer mailer

RUN apk add --no-cache postfix

EXPOSE 25
EXPOSE 465
EXPOSE 587

ENTRYPOINT ["/entrypoint.sh"]

CMD ["postfix", "start-fg"]

