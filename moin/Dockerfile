FROM registry.intra.dominic-ricottone.com/uwsgi:latest

# Override uwsgi configuration
COPY --chown=uwsgi:uwsgi uwsgi.ini /var/www/

# Install
COPY dist/moin-1.9.11 /var/moin
RUN cd /var/moin && pypy setup.py install
RUN rm -rf /var/moin

# Setup wiki server files
RUN cp -r /usr/lib/pypy/share/moin/server /var/www/ && chown -R uwsgi:uwsgi /var/www/server
RUN cp -r /usr/lib/pypy/share/moin/underlay /var/www/ && chown -R uwsgi:uwsgi /var/www/underlay

# Setup wiki user files
VOLUME /var/www/data
RUN cp -r /usr/lib/pypy/share/moin/data /var/www/ && chown -R uwsgi:uwsgi /var/www/data
COPY --chown=uwsgi:uwsgi rhtml/* /var/www/data/plugin/parser/

# Setup wiki configuration foles
COPY --chown=uwsgi:uwsgi moin.wsgi /var/www/
COPY --chown=uwsgi:uwsgi wikiconfig.py /var/www/

