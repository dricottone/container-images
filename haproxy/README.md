# haproxy


## Build and Deploy

```
make image
```


### Tags

 + `latest`
 + `syslog` which logs to a `syslog` server at $LOGDEST
   (`default: 127.0.0.1:514`)

----

## Use

Can be used with any container manager toolchain.

Create configuration files in `$confdir`. They should look like:

```
resolvers docker_dns
  nameserver docker 127.0.0.11:53

backend www_backend
  server web1 nginx:80 check resolvers docker_dns

frontend http_frontend
  bind :8080
  bind :8443 ssl crt /var/letsencrypt/example.com.pem alpn h2,http1.1
  mode http
  http-request redirect scheme https unless { ssl_fc }

  default_backend web_backend
```

Try:

```
$conman run --detach --name haproxy --restart always \
    --mount type=bind,src=$confdir,dst=/usr/local/etc/haproxy.d,readonly \
    registry.intra.dominic-ricottone.com/haproxy:latest
```

Or, to log to a `syslog` server at `syslog:1514`, try:

```
$conman run --detach --name haproxy --restart always \
    --mount type=bind,src=$confdir,dst=/usr/local/etc/haproxy.d,readonly \
    --env LOGDEST=syslog:1514 \
    registry.intra.dominic-ricottone.com/haproxy:syslog
```

