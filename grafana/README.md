# grafana


## Build and Deploy

```
make image
```


### Tags

 + `latest`

----

## Use

Can be used with any container manager toolchain.

The `$datadir` must be owned by UID 472.

Try:

```
$conman run --detach --name grafana --restart always \
    --mount type=bind,src=$datadir,/var/lib/grafana \
    registry.intra.dominic-ricottone.com/grafana:latest
```

Should be used with `registry.intra.dominic-ricottone.com/syslog`,
`registry.intra.dominic-ricottone.com/loki`,
and `registry.intra.dominic-ricottone.com/promtail`.

The default login is `admin`:`admin`.

