# fcgi


## Build and Deploy

```
make image
```


### Tags

 + `latest`

----

## Use

Can be used with any container manager toolchain.

This is a base image for application-specific container images.

```
FROM fcgi

WORKDIR /app

COPY app-dist /app
```

The FastCGI server then can be proxied over port 9000.
A script copied into the container at `/app/script.cgi` would be available
at `example.com/script.cgi`.

