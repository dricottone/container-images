#!/bin/sh
sed -i /var/www/uwsgi.ini -e "s/^logger = rsyslog:127.0.0.1:514,uwsgi$/logger = rsyslog:${LOGDEST},uwsgi/"

su-exec uwsgi "$@"

