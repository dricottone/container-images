# loki


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
$conman run --detach --name loki --restart always \
    registry.intra.dominic-ricottone.com/loki:latest
```

Should be used with `registry.intra.dominic-ricottone.com/syslog`
and `registry.intra.dominic-ricottone.com/promtail`.

