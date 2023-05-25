CONMAN=sudo docker

REGISTRY=registry.intra.dominic-ricottone.com
IMAGE=nitter
TAG_AMD64=amd64
TAG_ARM64=arm64

image: image-amd64 image-arm64

image-amd64:
	cd src && $(CONMAN) buildx build --push \
		--platform linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG_AMD64) \
		.

image-arm64:
	cd src && $(CONMAN) buildx build --push \
		--platform linux/arm64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG_ARM64) \
		. -f Dockerfile.arm64

.PHONY: image image-amd64 image-arm64
