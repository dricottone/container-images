CONMAN=sudo docker

REGISTRY=registry.intra.dominic-ricottone.com
IMAGE=php
TAG_DEV=development
TAG_DEV_FPM=fpm-development
TAG_PROD_RW=readwrite
TAG_PROD_RO=latest
TAG_PROD_FPM=fpm

image: image-dev image-prod-rw image-prod-ro image-dev-fpm image-prod-fpm

image-dev:
	$(CONMAN) buildx build --push \
		--platform linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG_DEV) \
		. -f Dockerfile.development

image-dev-fpm:
	$(CONMAN) buildx build --push \
		--platform linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG_DEV_FPM) \
		. -f Dockerfile.fpm-development

image-prod-rw:
	$(CONMAN) buildx build --push \
		--platform linux/arm64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG_PROD_RW) \
		. -f Dockerfile.readwrite

image-prod-ro:
	$(CONMAN) buildx build --push \
		--platform linux/arm64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG_PROD_RO) \
		.

image-prod-fpm:
	$(CONMAN) buildx build --push \
		--platform linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG_PROD_FPM) \
		. -f Dockerfile.fpm

.PHONY: image image-dev image-prod-rw image-prod-ro image-dev-fpm image-prod-fpm
