CONMAN=sudo docker

REGISTRY=registry.intra.dominic-ricottone.com
IMAGE=simple-chat
TAG=latest

image:
	curl -o simple-chat.tar.gz https://git.dominic-ricottone.com/~dricottone/simple-chat/archive/v1.0.1.tar.gz
	untar simple-chat.tar.gz
	$(CONMAN) buildx build --push \
		--platform linux/arm64,linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG) \
		.

.PHONY: image
