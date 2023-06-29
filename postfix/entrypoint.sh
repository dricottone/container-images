#!/bin/sh
newaliases
postmap /etc/postfix/transport
postmap /etc/postfix/generic
postmap /etc/postfix/recipient_canonical
postmap /etc/postfix/sasl/sasl_passwd

sed -i /etc/postfix/main.cf -e "s/^mydomain.*/mydomain = ${DOMAIN}/"
sed -i /etc/postfix/main.cf -e "s/^myhostname.*/myhostname = ${HOSTNAME}.${DOMAIN}/"
sed -i /etc/postfix/main.cf -e "s/^mydestination.*/mydestination = \$mydomain, \$myhostname, ${DESTINATION}, localhost, localhost.localdomain/"
sed -i /etc/postfix/main.cf -e "s/^relay_domains.*/relay_domains = \$mydomain, \$myhostname, ${DESTINATION}/"

exec "$@"

