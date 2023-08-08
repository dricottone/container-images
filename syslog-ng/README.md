# syslog-ng


## Build and Deploy

```
make image
```


### Tags

 + `latest`

----

## Use

Can be used with any container manager toolchain.

Try:

```
$conman run --detach --name syslog --restart always \
    registry.intra.dominic-ricottone.com/syslog-ng:latest
```

Should be used with `registry.intra.dominic-ricottone.com/loki`
and `registry.intra.dominic-ricottone.com/promtail`.

