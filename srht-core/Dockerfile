FROM alpine:3.17

RUN apk add --no-cache wget

RUN mv /etc/apk/repositories /etc/apk/repositories.bak
RUN arch="$(apk --print-arch)"; \
	case "$arch" in \
		x86_64) \
			repouri="https://mirror.sr.ht/alpine/v3.17/sr.ht"; \
			keyuri="https://mirror.sr.ht/alpine"; \
			keyfile="alpine@sr.ht.rsa.pub"; \
			;; \
		aarch64) \
			repouri="https://pkg.intra.dominic-ricottone.com/alpine/v3.17"; \
			keyuri="https://pkg.intra.dominic-ricottone.com/alpine"; \
			keyfile="me@dominic-ricottone.com.rsa.pub"; \
			;; \
		*) exit 1; ;; \
	esac; \
	wget --quiet --output-document=/etc/apk/keys/$keyfile $keyuri/$keyfile; \
	echo "$repouri" | cat - /etc/apk/repositories.bak >/etc/apk/repositories

COPY pgp.* /etc/sr.ht/

