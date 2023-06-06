#!/bin/sh
cd src/$1 || exit 1
sudo apk update
. APKBUILD
abuild checksum || exit 1
ulimit -n 1024
abuild -r || exit 1

