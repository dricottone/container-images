# nginx


## Build and Deploy

```
make image
```


### Tags

 + `latest`
 + `webdav` for WebDAV support

----

## Use

Can be used with any container manager toolchain.

Create server files in `$confdir`. They should look like:

```
server {
    listen 80 default_server;
    server_name _;

    location / {
        root /usr/share/nginx/html;
    }
}
```

Try:

```
$conman run --detach --name nginx --restart always \
    --mount type=bind,src=$confdir,dst=/etc/nginx/http.d,readonly \
    registry.intra.dominic-ricottone.com/nginx:latest
```

----

## How to use...


### errorpages.conf

`errorpages.conf` adds custom error pages and locations.
Consider adding these to all server.

```
server {
    list 80;
    server_name example.com;

    include errorpages.conf;
}
```


### headers.conf

`headers.conf` adds a set of very common and generally useful headers.
Consider adding these to all locations except on the default server,
and any internal redirect locations.

```
location / {
    include headers.conf;
}
```


### proxy.conf

`proxy.conf` adds a set of headers and enables a set of options that are
useful for redirects and proxies.

```
location / {
    proxy_read_timeout 300s;
    proxy_connect_timeout 75s;
    proxy_pass http://localhost:8080;
    include proxy.conf;
}
```


### fastcgi.conf

`uwsgi.conf` adds a set of headers and enables a set of options that are
useful for FastCGI proxies.

```
location / {
    include fastcgi.conf;
    fastcgi_param SCRIPT_FILENAME /app.cgi;
    fastcgi_param PATH_INFO       $uri;
    fastcgi_param QUERY_STRING    $args;
    fastcgi_param HTTP_HOST       $server_name;
    fastcgi_pass localhost:9000;
}
```



### uwsgi.conf

`uwsgi.conf` adds a set of headers and enables a set of options that are
useful for uWSGI proxies.

```
location / {
    include uwsgi.conf;
    uwsgi_pass localhost:9000;
}
```


### graphql.conf

`graphql.conf` adds a set of headers and enables a set of options that are
useful for GraphQL proxies.

```
location /query {
    proxy_read_timeout 300s;
    proxy_connect_timeout 75s;
    proxy_pass http://localhost:8081;
    include graphql.conf;
}
```


### letsencrypt.conf

`letsencrypt.conf` adds a location for `certbot(8)` integration.

```
server {
    listen 80;
    server_name example.com;

    include letsencrypt.conf;
}
```


