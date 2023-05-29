# srht-core


## Build and Deploy

```
make image
```


### Tags

 + `latest`

----

## Use

A base image that sorts out the installation of architecture-dependent
package repositories.

Requires a pair of passwordless PGP keys.
Try `gpg --edit-key KEYID` to remove the password,
then export with `gpg --armor --export-options export-minimal --export KEYID`
and `gpg --armor --export-secret-key KEYID`.

