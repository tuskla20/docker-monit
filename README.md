# maltyxx/docker-curl

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
docker run -ti --name=monit --privileged --net=host --pid=host --rm -v /:/host/:ro -v /dev:/host/dev -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker -p 2812:2812 -e MONIT_USERNAME='admin' -e MONIT_PASSWORD='changeit' maltyxx/monit:latest
```

## Dashboard

```
http://admin:changeit@localhost:2812
```
