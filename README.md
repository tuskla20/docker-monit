# maltyxx/docker-monit

## About

[Monit](https://mmonit.com/monit/) Docker image based on Alpine Linux.<br />
If you are interested, [check out](https://hub.docker.com/r/maltyxx/) my other 🐳 Docker images!

## Docker

## Use this image


## Variables

```
MONIT_USERNAME=user
``` 

```
MONIT_PASSWORD=changeit
```

### Command line

You can also use the following minimal command :

```
docker run -ti --name=monit --net=host --rm -v /:/host/:ro /var/run/docker.sock:/var/run/docker.sock -v <VOLUME>:/etc/monit -p 2812:2812 -e MONIT_USERNAME='admin' -e MONIT_PASSWORD='changeit' maltyxx/monit:latest
```

## Dashboard

```
apk add links && links http://admin:changeit@localhost:2812
```
