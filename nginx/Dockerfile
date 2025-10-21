FROM docker.io/library/nginx:alpine

COPY *.conf /etc/nginx/
COPY robots.txt /etc/nginx/conf.d/robots.txt
COPY error_pages.d/ /etc/nginx/conf.d/error_pages.d/

