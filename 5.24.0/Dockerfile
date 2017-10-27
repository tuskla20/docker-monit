FROM debian:jessie

MAINTAINER Yoann Vanitou <yvanitou@gmail.com>

ENV MONIT_VERSION 5.24.0

RUN apt-get update \
    && apt-get install --yes wget build-essential libz-dev libpam0g-dev libssl-dev lm-sensors

RUN wget -qO- https://mmonit.com/monit/dist/monit-"$MONIT_VERSION".tar.gz | tar -xvz -C /tmp

RUN cd /tmp/monit-"$MONIT_VERSION" \
    && ./configure \
    && make \
    && make install

RUN mkdir -v /usr/local/etc/monitrc \
    && chmod -v 700 /usr/local/etc/monitrc

COPY ./monitrc /usr/local/etc/monitrc

RUN chmod -v 700 /usr/local/etc/monitrc/monitrc

EXPOSE 2812

CMD ["/usr/local/bin/monit", "-I", "-c", "/usr/local/etc/monitrc/monitrc"]

