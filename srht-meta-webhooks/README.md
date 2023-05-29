# srht-meta-webhooks


## Build and Deploy

```
make image
```


### Tags

 + `latest`

----

## Use

Deploy the web workers for a sr.ht system's user account service.

```
$conman run --detach --name srht-meta-webhooks --restart always \
    registry.intra.dominic-ricottone.com/srht-meta-webhooks:latest
```

