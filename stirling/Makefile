CONMAN=sudo docker

REGISTRY=registry.intra.dominic-ricottone.com
IMAGE=stirling
TAG=latest

# need to install gradle and jdk21-openjdk, then run ./gradlew build within Stirling-PDF directory
image:
	$(CONMAN) buildx build --push --progress=plain \
		--platform linux/arm64,linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG) \
		Stirling-PDF/ -f Stirling-PDF/Dockerfile-ultra-lite

.PHONY: image
