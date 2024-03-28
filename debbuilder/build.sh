#!/bin/sh
cd src/$1 || exit 1
mk-build-deps -i -r control -t "apt-get -o Debug::pkgProblemResolver=yes -y --no-install-recommends" || exit 1
debuild -b -uc -us || exit 1
cp -a /build/src/*.deb /build/src/*.buildinfo /build/src/*.changes /build/pkg/

