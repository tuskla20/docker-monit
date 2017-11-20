#maltyxx/docker-monit

docker run -ti --privileged --net=host --pid=host --rm -v /:/host/:ro -v /dev:/host/dev -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker -p 2812:2812 -e USERNAME='admin' -e PASSWORD='admin' maltyxx/monit:latest