# nitter


## Build and Deploy

```
make image
```


### Tags

 + `amd64`
 + `arm64`

----

## Use

Can be used with any container manager toolchain.

Create a configuration file in `$conffile`. It should look like:

```
[Server]
address = "0.0.0.0"
port = 8080
https = false
httpMaxConnections = 10
staticDir = "./public"
title = "nitter"
hostname = "nitter.example.com"

[Cache]
listMinutes = 240
rssMinutes = 10
redisHost = "redis"
redisPort = 6379
redisPassword = ""
redisConnections = 20
redisMaxConnections = 30

[Config]
hmacKey = "random key for cryptographic signing of video urls"
base64Media = false
enableRSS = false
enableDebug = false
proxy = ""
proxyAuth = ""
tokenCount = 10

cookieHeader = "ct0=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx; auth_token=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
xCsrfToken = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

[Preferences]
theme = "Nitter"
replaceTwitter = "nitter.example.com"
replaceYouTube = ""
replaceReddit = ""
replaceInstagram = ""
proxyVideos = true
hlsPlayback = false
infiniteScroll = false
```

Try:

```
$conman run --detach --name redis --restart always \
    docker.io/library/redis:6-alpine redis-server
$conman run --detach --name nitter --restart always \
    --mount type=bind,src=$conffile,dst=/src/nitter.conf \
    registry.intra.dominic-ricottone.com/nitter:latest
```

