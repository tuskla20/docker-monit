#maltyxx/docker-monit

docker run -ti --privileged --net=host --rm -v /:/host/:ro -v /dev:/host/dev -p 2812:2812 -e USERNAME='admin' -e PASSWORD='admin' maltyxx/monit:latest