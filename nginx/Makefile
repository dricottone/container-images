CONMAN=sudo docker

REGISTRY=registry.intra.dominic-ricottone.com
IMAGE=nginx
TAG_HTTP=latest
TAG_WEBDAV=webdav

image: image-http image-webdav

image-http:
	$(CONMAN) buildx build --push \
		--platform linux/arm64,linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG_HTTP) \
		.

image-webdav:
	$(CONMAN) buildx build --push \
		--platform linux/arm64,linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG_WEBDAV) \
		. -f Dockerfile.webdav

.PHONY: image image-http image-webdav
