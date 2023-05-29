# srht-git-webhooks


## Build and Deploy

```
make image
```


### Tags

 + `latest`

----

## Use

Deploy the web workers for a sr.ht system's git service.

```
$conman run --detach --name srht-git-webhooks --restart always \
    registry.intra.dominic-ricottone.com/srht-git-webhooks:latest
```

