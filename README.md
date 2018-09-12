# maltyxx/docker-monit

## Variables

```
MONIT_USERNAME=user
```

```
MONIT_PASSWORD=changeit
```

## Execution

```
docker run -ti --name=monit --privileged --net=host --pid=host --rm -v /:/host/:ro -v /dev:/host/dev -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker -p 2812:2812 -e MONIT_USERNAME='admin' -e MONIT_PASSWORD='changeit' maltyxx/monit:latest
```

## Dashboard

```
docker exec -ti monit links http://localhost:2812
```
