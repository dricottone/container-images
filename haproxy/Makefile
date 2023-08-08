CONMAN=sudo docker

REGISTRY=registry.intra.dominic-ricottone.com
IMAGE=haproxy
TAG_LOCAL=latest
TAG_SYSLOG=syslog

image: image-local image-syslog

image-local:
	$(CONMAN) buildx build --push \
		--platform linux/arm64,linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG_LOCAL) \
		.

image-syslog:
	$(CONMAN) buildx build --push \
		--platform linux/arm64,linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG_SYSLOG) \
		. -f Dockerfile.syslog

.PHONY: image image-local image-syslog
