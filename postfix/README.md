# postfix


## Build and Deploy

```
make image
```


### Tags

 + `latest`
 + `tls-in` (listens on the SMTPS port, but sends without encryption or authentication)
 + `tls-out` (sends with encryption and authentication, but only listens on SMTP port)

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

Create an outbound authentication file in `$saslfile`.
This is required for relaying mail to major email providers, including GMail.
It must also be owned (on the host system) by the user that will create the
container (i.e. `root` for conventional `docker(1)` deployments).
It should look like:

```
[smtp.gmail.com]:587 example@gmail.com:wwwwxxxxyyyyzzzz
```

Create an inbound authentication file in `$sasldb`.
It must also be owned (on the host system) by the user that will create the
container (i.e. `root` for conventional `docker(1)` deployments).
It should be created like:

```
docker run --rm --interactive --tty \
  --mount type=bind,src=$(pwd)/sasldb2,dst=/etc/sasldb2 \
  registry.intra.dominic-ricottone.com/postfix:latest \
  /usr/sbin/saslpasswd2 -c -f /etc/sasldb2 -u example.com username
```

Try:

```
$conman run --detach --name postfix --restart always \
  --mount type=bind,src=$genericfile,dst=/etc/postfix/generic,readonly \
  --mount type=bind,src=$transportfile,dst=/etc/postfix/transport,readonly \
  --mount type=bind,src=$saslfile,dst=/etc/postfix/sasl/sasl_passwd,readonly \
  --mount type=bind,src=$sasldb,dst=/etc/sasl2/sasldb2,readonly \
  --env DOMAIN=example.com --env HOSTNAME=mail-1 --env DESTINATION="mail-2.example.com, mail-3.example.com" \
  --publish 0.0.0.0:25:25 --publish 0.0.0.0:465:465 \
  registry.intra.dominic-ricottone.com/postfix:latest
```

If using the `tls-out` image, skip `$sasldb`.
Similarly, if using the `tls-in` image, skip `$saslfile`.

If using the `tls-in` image, do not publish port 465.

