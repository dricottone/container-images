# srht-todo-webhooks


## Build and Deploy

```
make image
```


### Tags

 + `latest`

----

## Use

Deploy the web workers for a sr.ht system's issue tracker service.

```
$conman run --detach --name srht-todo-webhooks --restart always \
    registry.intra.dominic-ricottone.com/srht-todo-webhooks:latest
```

