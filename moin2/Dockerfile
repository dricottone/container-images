FROM python:3.13-alpine

# Install
RUN python3.13 -m ensurepip
RUN python3.13 -m pip install --upgrade --no-warn-script-location --root-user-action=ignore pip gunicorn setuptools==80 moin==2.0.0b3

# Create gunicorn user
RUN addgroup -S gunicorn
RUN adduser -SD -h /var/www -s /sbin/nologin -G gunicorn -g gunicorn gunicorn

# Create wiki
VOLUME /var/www/moin2
RUN moin create-instance --path /var/www/moin2 && chown -R gunicorn:gunicorn /var/www/moin2 && cd /var/www/moin2 && moin index-create

# Main program
# NOTE: `a:b` means `from a import b`
USER gunicorn
WORKDIR /var/www/moin2
EXPOSE 8080
COPY --chown=gunicorn:gunicorn gunicorn.conf.py /var/www/moin2/gunicorn.conf.py
COPY --chown=gunicorn:gunicorn app.py /var/www/moin2/app.py
CMD ["gunicorn", "--config=gunicorn.conf.py", "app:wiki"]

