CONMAN=sudo docker

REGISTRY=registry.intra.dominic-ricottone.com
IMAGE=uwsgi
TAG=latest

image:
	$(CONMAN) buildx build --push --progress=plain \
		--platform linux/arm64,linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG) \
		.

.PHONY: image
