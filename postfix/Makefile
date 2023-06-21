CONMAN=sudo docker

REGISTRY=registry.intra.dominic-ricottone.com
IMAGE=postfix
TAG_TLS_ALL=latest
TAG_TLS_IN=tls-in
TAG_TLS_OUT=tls-out

image: image-tls-all image-tls-in image-tls-out

image-tls-all:
	$(CONMAN) buildx build --push \
		--platform linux/arm64,linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG_TLS_ALL) \
		.

image-tls-in:
	$(CONMAN) buildx build --push \
		--platform linux/arm64,linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG_TLS_IN) \
		. -f Dockerfile.tls-in

image-tls-out:
	$(CONMAN) buildx build --push \
		--platform linux/arm64,linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG_TLS_OUT) \
		. -f Dockerfile.tls-out

.PHONY: image
