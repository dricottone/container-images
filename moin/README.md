# moin


## Build and Deploy

```
make image
```


### Tags

 + `latest`

----


## Use

tl;dr

```
$conman run --detach --name moin1 --restart always \
        --mount type=bind,src=$datadir,dst=/var/www/data \
        --mount type=bind,src=$config,dst=/var/www/wikiconfig.py \
        --env LOGDEST=syslog.example.com:514 \
        registry.intra.dominic-ricottone.com/moin:latest
```


### Wiki Data

To setup a new wiki,
unarchive the MoinMoin tarball and copy the `wiki/data` directory to `$datadir`.
Then try:

```
$conman run --detach --name moin1 --restart always \
        --mount type=bind,src=$datadir,dst=/var/www/data \
        registry.intra.dominic-ricottone.com/moin:latest
```

Alternatively,
run for the first time without a local folder mounted.
An anonymous volume with these files will be created.
The location of this volume can then be determined through `$conman volume ls`
and `$conman volume inspect`.
Copy these files to a local folder and re-run the container with it mounted.

To host an existing wiki,
copy the pre-existing data directory to `$datadir`.

Note that the `uwsgi` process runs as a non-root user
(named `uwsgi`, UID=100, GID=101)
and these files may need their ownership changed.


### Wiki Config

To setup a new wiki,
unarchive the MoinMoin tarball and copy the `wiki/wikiconfig.py` file locally.
Then try:

```
$conman run --detach --name moin1 --restart always \
        --mount type=bind,src=$config,dst=/var/www/wikiconfig.py \
        registry.intra.dominic-ricottone.com/moin:latest
```

Alternatively,
run for the first time without a local folder mounted.
The default configuration file can be accessed using
`docker cp $config moin1:/var/www/wikiconfig.py`.
Re-run the container with it mounted.

Some items you will want to update:
 + update `sitename`
 + update `page_front_page`
 + configure privileged accounts in `superuser` and/or `acl_rights_before`

To host an existing wiki,
copy the pre-existing configuration file to `$config`.

Note that the `uwsgi` process runs as a non-root user
(named `uwsgi`, UID=100, GID=101)
and these files may need their ownership changed.


### Logging

Access logging becomes prohibitively verbose very quickly.
For this reason,
logging to a remote syslog server is the default.
Configure the destination using the `$LOGDEST` environment variable.

