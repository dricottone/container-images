# Container Images

This repository contains all of the Dockerfiles and Makefiles I use to deploy
my web servers.
While my image repository is private (and will remain so), everything is
written to be portable and reproducible.
It should be easy to get things working on another build system.

|Images |Tags |Fully qualified name of the default image|
|:------|:----|:----------------------------------------|
|[apkbuilder](apkbuilder/)|latest,3.18,3.19|`registry.intra.dominic-ricottone.com/apkbuilder:latest`|
|[dnsmasq](dnsmasq/)|latest|`registry.intra.dominic-ricottone.com/dnsmasq:latest`|
|[fcgi](fcgi/)|latest|`registry.intra.dominic-ricottone.com/fcgi:latest`|
|[haproxy](haproxy/)|latest,syslog|`registry.intra.dominic-ricottone.com/haproxy:latest`|
|[moin](moin/)|latest|`registry.intra.dominic-ricottone.com/moin:latest`|
|[nginx](nginx/)|latest,webdav|`registry.intra.dominic-ricottone.com/nginx:latest`|
|[nitter](nitter/)|amd64,arm64|`registry.intra.dominic-ricottone.com/nitter:amd64`|
|[php](php/)|latest,readwrite,fpm,development,fpm-development|`registry.intra.dominic-ricottone.com/php:latest`|
|[postfix](postfix/)|latest,tls-in,tls-out|`registry.intra.dominic-ricottone.com/postfix:latest`|
|[simple-chat](simple-chat/)|latest|`registry.intra.dominic-ricottone.com/simple-chat:latest`|
|[stirling](stirling/)|latest|`registry.intra.dominic-ricottone.com/stirling:latest`|
|[syslog-ng](syslog-ng/)|latest|`registry.intra.dominic-ricottone.com/syslog-ng:latest`|
|[tailon](tailon/)|latest|`registry.intra.dominic-ricottone.com/tailon:latest`|
|[uwsgi](uwsgi/)|latest|`registry.intra.dominic-ricottone.com/uwsgi:latest`|

## License

I share the contents of this repository under the BSD 3 clause license.

