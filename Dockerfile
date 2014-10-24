FROM aooj/collectd:latest
MAINTAINER AooJ <aooj@n13.cz>

ADD files/collectd/collect.d /etc/collectd/collect.d
