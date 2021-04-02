# maltyxx/docker-monit

## About

[Monit](https://mmonit.com/monit/) Docker image based on Alpine Linux.<br />
If you are interested, [check out](https://hub.docker.com/r/maltyxx/) my other 🐳 Docker images!

## Docker

### Supported multi architectures

- armv7 (arm32)
- armv8 (arm64)
- amd64 (x86_64)

## Use this image

### Variables

```
MONIT_USERNAME=user
``` 

```
MONIT_PASSWORD=changeit
```

### Mount points

Configs should be stored in the following directory : 

```
/etc/monit/monit.d/*.cfg
```

### Command line

You can also use the following minimal command :

```
docker run -ti --name=monit --net=host --rm -v /:/host/:ro -p 2812:2812 -e MONIT_USERNAME='admin' -e MONIT_PASSWORD='changeit' maltyxx/monit:latest
```

### Dashboard

```
apk add links && links http://admin:changeit@localhost:2812
```
