# srht-git-core


## Build and Deploy

```
make image
```


### Tags

 + `latest`

----

## Use

Deploy the web server for a sr.ht system's git service.

Used by proxying from `nginx(8)`.
The below location should be added to the server configuration for
`git.example.com`.

```
location / {
    proxy_pass http://localhost:5001;
}

location = /authorize {
    proxy_pass http://localhost:5001;
}
```

The container needs to be reachable from `nginx(8)` on port 5001.
Consider either using a pod or creating a bridge network.
It also needs to have the git repositories mounted to `/var/lib/git`.

```
$conman run --detach --name srht-git-core --restart always \
    --mount type=bind,src=/host/path/to/git/repos,dst=/var/lib/git,z \
    registry.intra.dominic-ricottone.com/srht-git-core:latest
```

