CONMAN=sudo docker

REGISTRY=registry.intra.dominic-ricottone.com
IMAGE=srht-git-ssh
TAG=latest

KEYS=ssh_host_dsa_key.pub ssh_host_ecdsa_key.pub ssh_host_ed25519_key.pub ssh_host_rsa_key.pub ssh_host_dsa_key ssh_host_ecdsa_key ssh_host_ed25519_key ssh_host_rsa_key

image: $(KEYS)
	$(CONMAN) buildx build --push \
		--platform linux/arm64,linux/amd64 \
		--tag $(REGISTRY)/$(IMAGE):$(TAG) \
		.

$(KEYS):
	ssh-keygen -A -f ./

.PHONY: image
