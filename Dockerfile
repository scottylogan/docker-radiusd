FROM scottylogan/rpi-centos7
LABEL maintainer "Scotty Logan <swl@stanford.edu>"

RUN yum -y install freeradius freeradius-utils

VOLUME /etc/raddb

WORKDIR /

EXPOSE 1812 1812/udp 1813 1813/udp

RUN chown -R radiusd.radiusd /var/run/radiusd /var/log/radius

USER radiusd

# for debugging, use
# CMD [ "/usr/bin/sbin/radiusd", "-X" ]
# and look at the journald log

CMD [ "/usr/sbin/radiusd", "-f" ]

