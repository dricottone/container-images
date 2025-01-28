# Container Images

This repository contains all of the Dockerfiles and Makefiles I use to deploy
my web servers.
While my image repository is private (and will remain so), everything is
written to be portable and reproducible.
It should be easy to get things working on another build system.

|Images |Tags |Fully qualified name of the default image|
|:------|:----|:----------------------------------------|
|[apkbuilder](/~dricottone/container-images/tree/dev/item/apkbuilder/README.md)|latest,3.18,3.19|`registry.intra.dominic-ricottone.com/apkbuilder:latest`|
|[dnsmasq](/~dricottone/container-images/tree/dev/item/dnsmasq/README.md)|latest|`registry.intra.dominic-ricottone.com/dnsmasq:latest`|
|[fcgi](/~dricottone/container-images/tree/dev/item/fcgi/README.md)|latest|`registry.intra.dominic-ricottone.com/fcgi:latest`|
|[haproxy](/~dricottone/container-images/tree/dev/item/haproxy/README.md)|latest,syslog|`registry.intra.dominic-ricottone.com/haproxy:latest`|
|[nginx](/~dricottone/container-images/tree/dev/item/nginx/README.md)|latest,webdav|`registry.intra.dominic-ricottone.com/nginx:latest`|
|[nitter](/~dricottone/container-images/tree/dev/item/nitter/README.md)|amd64,arm64|`registry.intra.dominic-ricottone.com/nitter:amd64`|
|[php](/~dricottone/container-images/tree/dev/item/php/README.md)|latest,readwrite,fpm,development,fpm-development|`registry.intra.dominic-ricottone.com/php:latest`|
|[postfix](/~dricottone/container-images/tree/dev/item/postfix/README.md)|latest,tls-in,tls-out|`registry.intra.dominic-ricottone.com/postfix:latest`|
|[simple-chat](/~dricottone/container-images/tree/dev/item/simple-chat/README.md)|latest|`registry.intra.dominic-ricottone.com/simple-chat:latest`|
|[syslog-ng](/~dricottone/container-images/tree/dev/item/syslog-ng/README.md)|latest|`registry.intra.dominic-ricottone.com/syslog-ng:latest`|

## License

I share the contents of this repository under the BSD 3 clause license.

