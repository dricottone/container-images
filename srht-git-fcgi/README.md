# srht-git-fcgi


## Build and Deploy

```
make image
```


### Tags

 + `latest`

----

## Use

Deploy the FastCGI server for a sr.ht system's git service.

Used by proxying from `nginx(8)`.
The below location should be added to the server configuration for
`git.example.com`.

```
location ~ ^/([^/]+)/([^/]+)/(HEAD|info/refs|objects/info/.*|git-upload-pack).*$ {
    auth_request /authorize;
    root /var/lib/git;
    fastcgi_pass localhost:9000;
    fastcgi_param SCRIPT_FILENAME /usr/libexec/git-core/git-http-backend;
    fastcgi_param PATH_INFO $uri;
    fastcgi_param GIT_PROJECT_ROOT $document_root;
}
```

The container needs to be reachable from `nginx(8)` on port 9000.
Consider either using a pod or creating a bridge network.
It also needs to have the git repositories mounted to `/var/lib/git`.

```
$conman run --detach --name srht-git-fcgi --restart always \
    --mount type=bind,src=/host/path/to/git/repos,dst=/var/lib/git,z \
    registry.intra.dominic-ricottone.com/srht-git-fcgi:latest
```

