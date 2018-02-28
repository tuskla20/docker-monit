# maltyxx/docker-monit

## Variables

```
MONIT_USERNAME=user
```

```
MONIT_PASSWORD=changeit
```

```
MONIT_VOLUME_EXCLUDED=/data,/var
```

```
MONIT_NETWORK_EXCLUDED=lo,eth1
```

```
MONIT_CONTAINER_EXCLUDED=ngnix
```

```
MONIT_CONTAINER_LABEL=io.docker.container.name
```

```
MONIT_DB_DATA_PATH=/var/lib/mysql
```

```
MONIT_DB_EXCLUDED_PATH=/var/lib/mysql/database
```

```
MONIT_DB_INCLUDE_EXT=MYD,ibd
```

## Execution

```
docker run -ti --name=monit --privileged --net=host --pid=host --rm -v /:/host/:ro -v /dev:/host/dev -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker -p 2812:2812 -e MONIT_USERNAME='admin' -e MONIT_PASSWORD='changeit' maltyxx/monit:latest
```

## Dashboard

```
docker exec -ti monit links http://admin:changeit@localhost:2812
```