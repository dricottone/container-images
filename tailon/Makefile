CONMAN=sudo docker

REGISTRY=registry.intra.dominic-ricottone.com
IMAGE=tailon
TAG=latest

src/frontend_bin.go:
	cd src && make frontend_bin.go

image: src/frontend_bin.go
	cd src && $(CONMAN) buildx build --push --progress=plain \
		--platform linux/arm64,linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG) \
		.

.PHONY: image
