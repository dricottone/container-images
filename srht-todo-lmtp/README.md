# srht-todo-lmtp


## Build and Deploy

```
make image
```


### Tags

 + `latest`

----

## Use

Deploy the LMTP server for a sr.ht system's issue tracker service.

The container needs to be have a sockets directory mounted.

```
$conman run --detach --name srht-todo-lmtp --restart always \
    --mount type=bind,src=$socksdir,dst=/var/socks \
    registry.intra.dominic-ricottone.com/srht-todo-lmtp:latest
```

