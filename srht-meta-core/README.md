# srht-meta-core


## Build and Deploy

```
make image
```


### Tags

 + `latest`

----

## Use

Deploy the web server for a sr.ht system's user account service.

Used by proxying from `nginx(8)`.
The below location should be added to the server configuration for
`meta.example.com`.

```
location / {
    proxy_pass http://localhost:5000;
}

location = /register {
    proxy_pass http://localhost:5000;
}

location /.well-known/oauth-authorization-server {
    proxy_pass http://localhost:5000;
}

```

The container needs to be reachable from `nginx(8)` on port 5000.
Consider either using a pod or creating a bridge network.

```
$conman run --detach --name srht-meta-core --restart always \
    registry.intra.dominic-ricottone.com/srht-meta-core:latest
```

