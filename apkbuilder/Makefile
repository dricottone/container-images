CONMAN=sudo docker

REGISTRY=registry.intra.dominic-ricottone.com
IMAGE=apkbuilder
TAG_NUM_LATEST=3.19
TAG_NUM_LEGACY=3.18

image: image-legacy image-latest

image-legacy:
	$(CONMAN) buildx build --push \
		--platform linux/arm64,linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG_NUM_LEGACY) \
		. -f Dockerfile.3.18

image-latest:
	$(CONMAN) buildx build --push \
		--platform linux/arm64,linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG_NUM_LATEST) \
		--tag $(REGISTRY)/$(IMAGE):latest \
		. -f Dockerfile.3.19

.PHONY: image image-legacy image-latest
