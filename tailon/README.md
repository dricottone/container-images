# tailon


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
$conman run --detach --name tailon --restart always \
    --mount type=bind,src=$logfile,dst=/var/log/tailon.log \
    registry.intra.dominic-ricottone.com/tailon:latest
```

