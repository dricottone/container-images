# srht-todo-core


## Build and Deploy

```
make image
```


### Tags

 + `latest`

----

## Use

Deploy the web server for a sr.ht system's issue tracker service.

Used by proxying from `nginx(8)`.
The below location should be added to the server configuration for
`todo.example.com`.

```
location / {
    proxy_pass http://localhost:5003;
}
```

The container needs to be reachable from `nginx(8)` on port 5003.
Consider either using a pod or creating a bridge network.

```
$conman run --detach --name srht-todo-core --restart always \
    registry.intra.dominic-ricottone.com/srht-todo-core:latest
```

