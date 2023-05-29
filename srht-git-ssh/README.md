# srht-git-ssh


## Build and Deploy

```
make image
```


### Tags

 + `latest`

----

## Use

Deploy the SSH server for a sr.ht system's git service.

The container needs to have the git repositories mounted to `/var/lib/git`.

```
$conman run --detach --name srht-git-ssh --restart always \
    --mount type=bind,src=/host/path/to/git/repos,dst=/var/lib/git,z \
    registry.intra.dominic-ricottone.com/srht-git-ssh:latest
```

The server will listen on port 22.

After starting the container, log in and set the password for the git user.
This needs to be done interactively.

