CONMAN=sudo docker

REGISTRY=registry.intra.dominic-ricottone.com
IMAGE=fcgi
TAG=latest

image:
	NOCOLOR=1 $(CONMAN) buildx build --push --progress=plain \
		--platform linux/arm64,linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG) \
		.

.PHONY: image
