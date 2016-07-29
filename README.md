# RADIUS container

CentOS 7.2 FreeRADIUS 3 container

# Usage

`radiusd.service` contains a `systemd` unit for running the continer
and setting up ports 1812 and 1813.  It also mounts configuration
volumes from `/srv/radiusd/raddb` and `/srv/radiusd/freeradius`
onto `/etc/raddb` and `/etc/freeradius`, respectively.

# TODO

* re-enable Postgres support

