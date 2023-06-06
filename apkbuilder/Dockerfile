FROM docker.io/library/alpine:3.17

RUN adduser -D builder && addgroup builder abuild

# packaging script
COPY --chown=builder:builder build.sh /home/builder/build.sh
RUN chmod 755 /home/builder/build.sh

# packaging configuration
COPY --chown=builder:builder abuild /home/builder/.abuild
RUN chmod 600 /home/builder/.abuild/*

RUN apk add --no-cache abuild sudo
RUN echo "builder ALL=(ALL) NOPASSWD: ALL" >>/etc/sudoers
COPY abuild/*.rsa.pub /etc/apk/keys/
RUN chmod 644 /etc/apk/keys/*.rsa.pub
RUN mv /etc/apk/repositories /etc/apk/repositories.bak
RUN echo "https://pkg.intra.dominic-ricottone.com/alpine/v3.17" | cat - /etc/apk/repositories.bak >/etc/apk/repositories

USER builder
WORKDIR /home/builder
RUN mkdir -p /home/builder/packages
VOLUME /home/builder/packages/src
VOLUME /home/builder/src
ENTRYPOINT ["/home/builder/build.sh"]
CMD ["non_existant_package_name"]

