# Container Images

This repository contains all of the Dockerfiles and Makefiles I use to deploy
my web servers.
While my image repository is private (and will remain so), everything is
written to be portable and reproducible.
It should be easy to get things working on another build system.

|Images |Tags |Fully qualified name of the default image|
|:------|:----|:----------------------------------------|
|[apkbuilder](tree/dev/item/apkbuilder/README.md)|latest,3.18,3.19|`registry.intra.dominic-ricottone.com/apkbuilder:latest`|
|[dnsmasq](tree/dev/item/dnsmasq/README.md)|latest|`registry.intra.dominic-ricottone.com/dnsmasq:latest`|
|[fcgi](/tree/dev/item/fcgi/README.md)|latest|`registry.intra.dominic-ricottone.com/fcgi:latest`|
|[haproxy](/tree/dev/item/haproxy/README.md)|latest,syslog|`registry.intra.dominic-ricottone.com/haproxy:latest`|
|[moin](/tree/dev/item/moin/README.md)|latest|`registry.intra.dominic-ricottone.com/moin:latest`|
|[nginx](/tree/dev/item/nginx/README.md)|latest,webdav|`registry.intra.dominic-ricottone.com/nginx:latest`|
|[nitter](/tree/dev/item/nitter/README.md)|amd64,arm64|`registry.intra.dominic-ricottone.com/nitter:amd64`|
|[php](/tree/dev/item/php/README.md)|latest,readwrite,fpm,development,fpm-development|`registry.intra.dominic-ricottone.com/php:latest`|
|[postfix](/tree/dev/item/postfix/README.md)|latest,tls-in,tls-out|`registry.intra.dominic-ricottone.com/postfix:latest`|
|[simple-chat](/tree/dev/item/simple-chat/README.md)|latest|`registry.intra.dominic-ricottone.com/simple-chat:latest`|
|[stirling](/tree/dev/item/stirling/README.md)|latest|`registry.intra.dominic-ricottone.com/stirling:latest`|
|[syslog-ng](/tree/dev/item/syslog-ng/README.md)|latest|`registry.intra.dominic-ricottone.com/syslog-ng:latest`|
|[tailon](/tree/dev/item/tailon/README.md)|latest|`registry.intra.dominic-ricottone.com/tailon:latest`|
|[uwsgi](/tree/dev/item/uwsgi/README.md)|latest|`registry.intra.dominic-ricottone.com/uwsgi:latest`|

## License

I share the contents of this repository under the BSD 3 clause license.

