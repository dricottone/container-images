CONMAN=sudo docker

REGISTRY=registry.intra.dominic-ricottone.com
IMAGE=nginx
TAG=latest

image:
	$(CONMAN) buildx build --push \
		--platform linux/arm64,linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG) \
		.

.PHONY: image
