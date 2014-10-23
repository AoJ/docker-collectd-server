FROM aooj/collectd:latest
MAINTAINER AooJ <aooj@n13.cz>

ADD files/confd /etc/confd
ADD files/collectd/collect.d /etc/collectd/collect.d
ADD files/collectd/plugins.conf /etc/collectd/plugins.conf

VOLUME /data

EXPOSE 4567
