# maltyxx/docker-monit

## Variables

MONIT_USERNAME

MONIT_PASSWORD

MONIT_VOLUME_EXCLUDED

MONIT_NETWORK_EXCLUDED

MONIT_CONTAINER_EXCLUDED

MONIT_CONTAINER_LABEL

MONIT_DB_DATA_PATH

MONIT_DB_EXCLUDED_PATH

## Execution
docker run -ti --privileged --net=host --pid=host --rm -v /:/host/:ro -v /dev:/host/dev -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker -p 2812:2812 -e MONIT_USERNAME='admin' -e MONIT_PASSWORD='admin' maltyxx/monit:latest