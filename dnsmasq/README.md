# dnsmasq


## Build and Deploy

```
make image
```


### Tags

 + `latest`

----

## Use

Can be used with any container manager toolchain.

Create a hosts file in `$hostsfile`. It should look like:

```
1.2.3.4 example.com www.example.com
```

Try:

```
$conman run --detach --name dnsmasq --restart always \
    --mount type=bind,src=$hostsfile,target=/etc/dnsmasq-hosts,readonly \
    registry.intra.dominic-ricottone.com/dnsmasq:latest
```

