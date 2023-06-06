# apkbuilder


## Build and Deploy

```
make image
```


### Tags

 + `latest`

----

## Use

Builds APK packages.
Not meant for humans.
See https://git.dominic-ricottone.com/~dricottone/simple-builder .

Create an abuild folder containing:

 * an `abuild.conf` file
 * packaging keys

For the former, try a configuration like:

```
export CFLAGS="-Os -fomit-frame-pointer"
export CXXFLAGS="$CFLAGS"
export CPPFLAGS="$CFLAGS"
export LDFLAGS="-Wl,--as-needed,-O1,--sort-common"
export GOFLAGS="-buildmode=pie -modcacherw -trimpath -buildvcs=false"
# Do note that these should work with at least GDC and LDC
export DFLAGS="-Os"

export JOBS=$(nproc)
export MAKEFLAGS=-j$JOBS
export SAMUFLAGS=-j$JOBS
export CARGO_BUILD_JOBS=$JOBS

export CARGO_PROFILE_RELEASE_OPT_LEVEL="s"
export CARGO_PROFILE_RELEASE_PANIC="abort"
export CARGO_PROFILE_RELEASE_CODEGEN_UNITS=1
export CARGO_PROFILE_RELEASE_LTO="true"

#USE_COLORS=1

#USE_CCACHE=1

SRCDEST=/var/cache/distfiles

# uncomment line below to store built packages in other location
# The package will be stored as $REPODEST/$repo/$pkgname-$pkgver-r$pkgrel.apk
# where $repo is the name of the parent directory of $startdir.
REPODEST=$HOME/packages

PACKAGER="Dominic Ricottone <me@dominic-ricottone.com>"
PACKAGER_PRIVKEY="/home/builder/.abuild/me@dominic-ricottone.com.rsa"
MAINTAINER="$PACKAGER"

# what to clean up after a successful build
CLEANUP="srcdir bldroot pkgdir deps"

# what to cleanup after a failed build
ERROR_CLEANUP="bldroot deps"
```

For the latter, try:

```
openssl genrsa -out abuild/me@dominic-ricottone.com.rsa 2048
openssl rsa -in abuild/me@dominic-ricottone.com.rsa -pubout -out abuild/me@dominic-ricottone.com.rsa.pub
```

