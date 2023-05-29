#!/bin/sh
newaliases
postmap /etc/postfix/transport
postmap /etc/postfix/generic
postmap /etc/postfix/sasl/sasl_passwd

exec "$@"

