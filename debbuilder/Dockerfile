FROM docker.io/library/ubuntu:18.04

# apt configuration
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
RUN sed /etc/apt/sources.list.bak -e 's/# deb-src/deb-src/g' >/etc/apt/sources.list
RUN apt-get update && apt-get install -y --no-install-recommends build-essential cdbs devscripts equivs fakeroot && apt-get clean && rm -rf /tmp/* /var/tmp/*

# build script
RUN mkdir -p /build
WORKDIR /build
COPY build.sh /build/build.sh
RUN chmod 755 /build/build.sh

VOLUME /build/src
VOLUME /build/pkg

ENTRYPOINT ["/build/build.sh"]
CMD ["non_existant_package_name"]

