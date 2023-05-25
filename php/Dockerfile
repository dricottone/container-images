FROM docker.io/library/php:alpine

COPY php/ /usr/local/etc/php/

RUN rm /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini-production /usr/local/etc/php/conf.d/docker-php-ext-sodium.ini
RUN mv /usr/local/etc/php/production.conf /usr/local/etc/php/conf.d/production.ini
RUN mv /usr/local/etc/php/production-readonly.conf /usr/local/etc/php/conf.d/production-readonly.ini

