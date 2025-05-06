# nitter


## Build and Deploy

```
make image
```


### Tags

 + `amd64`
 + `arm64`

----

## Use

Can be used with any container manager toolchain.

Requires
[session tokens](https://github.com/zedeus/nitter/wiki/Creating-session-tokens)
as `$sessionsfile`.

Try:

```
$conman run --detach --name redis --restart always \
    docker.io/library/redis:6-alpine redis-server
$conman run --detach --name nitter --restart always \
    --mount type=bind,src=$sessionsfile,dst=/src/sessions.jsonl \
    registry.intra.dominic-ricottone.com/nitter:latest
```

