# postfix


## Build and Deploy

```
make image
```


### Tags

 + `latest`

----

## Use

Can be used with any container manager toolchain.

Create a `generic(5)` file in `$genericfile`.
Mail with recipient addresses matching the patterns will be rewritten.
It must also be owned (on the host system) by the user that will create the
container (i.e. `root` for conventional `docker(1)` deployments).
It should like like:

```
root@localhost example@gmail.com
@localhost     example@gmail.com
```

Create a `transport(5)` file in `$transportfile`.
Mail is routed based on which pattern the recipient address matches.
It must also be owned (on the host system) by the user that will create the
container (i.e. `root` for conventional `docker(1)` deployments).
It should look like:

```
example.com  local
.example.com local
*            relay:[smtp.gmail.com]:587
```

Create an authentication file in `$saslfile`.
This is required for relaying mail to major email providers, including GMail.
It must also be owned (on the host system) by the user that will create the
container (i.e. `root` for conventional `docker(1)` deployments).
It should look like:

```
[smtp.gmail.com]:587 example@gmail.com:wwwwxxxxyyyyzzzz
```

Create a configuration file in `$conffile`.

Try:

```
$conman run --detach --name postfix --restart always \
  --mount type=bind,src=$genericfile,dst=/etc/postfix/generic,readonly \
  --mount type=bind,src=$transportfile,dst=/etc/postfix/transport,readonly \
  --mount type=bind,src=$saslfile,dst=/etc/postfix/sasl/sasl_passwd,readonly \
  --mount type=bind,src=$conffile,dst=/etc/postfix/main.cf,readonly \
  registry.intra.dominic-ricottone.com/postfix:latest
```

