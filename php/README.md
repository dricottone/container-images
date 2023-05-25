# php


## Build and Deploy

```
make image
```


### Tags

 + `latest` (a read-only and production-ready interpreter)
 + `fpm` (a read-only and production-ready FastCGI server)
 + `readwrite` (a production-ready interpreter allowing 8 megabyte uploads)
 + `development` (an unsafe interpreter)
 + `development-fpm` (an unsafe FastCGI server)

----

## Use

Can be used with any container manager toolchain.

Can be used as a base image.
To run a PHP application requiring MySQL, try:

```
FROM registry.intra.dominic-ricottone.com/php:latest

RUN mv "$PHP_INI_DIR/pdo-mysql.conf" "$PHP_INI_DIR/conf.d/php-pdo-mysql.ini"
```

To run a FastCGI application, try:

```
FROM registry.intra.dominic-ricottone.com/php:fpm

WORKDIR /app

COPY app-dist /app
```

The FastCGI server then can be proxied over port 9000.
A script copied into the container at `/app/script.cgi` would be available
at `example.com/script.cgi`.

Partial configurations are available for:

 + MySQL/MariaDB...
   + with the `mysqli` driver (`mysqli.conf`)
   + with the `pdo_mysql` driver (`pdo-mysql.conf`)
 + PostgreSQL (`pgsql.conf`)
 + Sodium (`sodium.conf`)

