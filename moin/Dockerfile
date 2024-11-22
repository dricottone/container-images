FROM registry.intra.dominic-ricottone.com/uwsgi:latest

USER root

COPY dist/moin-1.9.11 /var/moin
RUN cd /var/moin && pypy setup.py install

RUN cp -r /usr/lib/pypy/share/moin/server /var/www/
RUN cp -r /usr/lib/pypy/share/moin/underlay /var/www/
#Eventually... COPY rhtml/* /var/www/data/plugin/parser/
COPY moin.wsgi /var/www/
COPY uwsgi.ini /var/www/
COPY wikiconfig.py /var/www/

RUN chown 100:101 /var/www/uwsgi.ini
RUN chown 100:101 /var/www/moin.wsgi
RUN chown 100:101 /var/www/wikiconfig.py
RUN chown -R 100:101 /var/www/server
RUN chown -R 100:101 /var/www/underlay

USER uwsgi

