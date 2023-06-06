# Container Images

This repository contains all of the Dockerfiles and Makefiles I use to deploy
my web servers.
While my image repository is private (and will remain so), everything is
written to be portable and reproducible.
It should be easy to get things working on another build system.

|Images |Tags |Fully qualified name of the default image|
|:------|:----|:----------------------------------------|
|[apkbuilder](/~dricottone/container-images/tree/dev/item/apkbuilder/README.md)|latest|`registry.intra.dominic-ricottone.com/apkbuilder:latest`|
|[dnsmasq](/~dricottone/container-images/tree/dev/item/dnsmasq/README.md)|latest|`registry.intra.dominic-ricottone.com/dnsmasq:latest`|
|[fcgi](/~dricottone/container-images/tree/dev/item/fcgi/README.md)|latest|`registry.intra.dominic-ricottone.com/fcgi:latest`|
|[haproxy](/~dricottone/container-images/tree/dev/item/haproxy/README.md)|latest|`registry.intra.dominic-ricottone.com/haproxy:latest`|
|[nginx](/~dricottone/container-images/tree/dev/item/nginx/README.md)|latest|`registry.intra.dominic-ricottone.com/nginx:latest`|
|[nitter](/~dricottone/container-images/tree/dev/item/nitter/README.md)|amd64,arm64|`registry.intra.dominic-ricottone.com/nitter:amd64`|
|[php](/~dricottone/container-images/tree/dev/item/php/README.md)|latest,readwrite,fpm,development,fpm-development|`registry.intra.dominic-ricottone.com/php:latest`|
|[postfix](/~dricottone/container-images/tree/dev/item/postfix/README.md)|latest|`registry.intra.dominic-ricottone.com/postfix:latest`|
|[srht-core](/~dricottone/container-images/tree/dev/item/srht-core/README.md)|latest|`registry.intra.dominic-ricottone.com/srht-core:latest`|
|[srht-git-api](/~dricottone/container-images/tree/dev/item/srht-git-api/README.md)|latest|`registry.intra.dominic-ricottone.com/srht-git-api:latest`|
|[srht-git-core](/~dricottone/container-images/tree/dev/item/srht-git-core/README.md)|latest|`registry.intra.dominic-ricottone.com/srht-git-core:latest`|
|[srht-git-fcgi](/~dricottone/container-images/tree/dev/item/srht-git-fcgi/README.md)|latest|`registry.intra.dominic-ricottone.com/srht-git-fcgi:latest`|
|[srht-git-ssh](/~dricottone/container-images/tree/dev/item/srht-git-ssh/README.md)|latest|`registry.intra.dominic-ricottone.com/srht-git-ssh:latest`|
|[srht-git-webhooks](/~dricottone/container-images/tree/dev/item/srht-git-webhooks/README.md)|latest|`registry.intra.dominic-ricottone.com/srht-git-webhooks:latest`|
|[srht-meta-api](/~dricottone/container-images/tree/dev/item/srht-meta-api/README.md)|latest|`registry.intra.dominic-ricottone.com/srht-meta-api:latest`|
|[srht-meta-core](/~dricottone/container-images/tree/dev/item/srht-meta-core/README.md)|latest|`registry.intra.dominic-ricottone.com/srht-meta-core:latest`|
|[srht-meta-webhooks](/~dricottone/container-images/tree/dev/item/srht-meta-webhooks/README.md)|latest|`registry.intra.dominic-ricottone.com/srht-meta-webhooks:latest`|
|[srht-nginx](/~dricottone/container-images/tree/dev/item/srht-nginx/README.md)|latest|`registry.intra.dominic-ricottone.com/srht-nginx:latest`|
|[srht-todo-api](/~dricottone/container-images/tree/dev/item/srht-todo-api/README.md)|latest|`registry.intra.dominic-ricottone.com/srht-todo-api:latest`|
|[srht-todo-core](/~dricottone/container-images/tree/dev/item/srht-todo-core/README.md)|latest|`registry.intra.dominic-ricottone.com/srht-todo-core:latest`|
|[srht-todo-lmtp](/~dricottone/container-images/tree/dev/item/srht-todo-lmtp/README.md)|latest|`registry.intra.dominic-ricottone.com/srht-todo-lmtp:latest`|
|[srht-todo-webhooks](/~dricottone/container-images/tree/dev/item/srht-todo-webhooks/README.md)|latest|`registry.intra.dominic-ricottone.com/srht-todo-webhooks:latest`|

## License

I share the contents of this repository under the BSD 3 clause license.

