# srht-meta-api


## Build and Deploy

```
make image
```


### Tags

 + `latest`

----

## Use

Deploy the API server for a sr.ht system's user account service.

Used by proxying from `nginx(8)`.
The below location should be added to the server configuration for
`meta.example.com`.

```
location /query {
    proxy_pass http://localhost:5100;
}
```

The container needs to be reachable from `nginx(8)` on port 5100.
Consider either using a pod or creating a bridge network.

```
$conman run --detach --name srht-meta-api --restart always \
    registry.intra.dominic-ricottone.com/srht-meta-api:latest
```

