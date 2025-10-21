CONMAN=sudo docker

REGISTRY=registry.intra.dominic-ricottone.com
IMAGE=nginx
TAG_HTTP=latest
TAG_WEBDAV=webdav

robots.txt:
	rm --force robots.cache
	curl --output=robots.cache https://git.sr.ht/~sircmpwn/sr.ht-nginx/blob/master/robots.txt
	sed --in-place robots.cache --expression='1,34d'
	cat robots.head robots.cache >robots.txt

image: image-http image-webdav

image-http: robots.txt
	$(CONMAN) buildx build --push --progress=plain \
		--platform linux/arm64,linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG_HTTP) \
		.

image-webdav: robots.txt
	$(CONMAN) buildx build --push --progress=plain \
		--platform linux/arm64,linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG_WEBDAV) \
		. -f Dockerfile.webdav

.PHONY: robots.txt image image-http image-webdav
