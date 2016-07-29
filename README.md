# RADIUS container

CentOS 7.2 FreeRADIUS 3 container

# Usage

`radiusd.service` contains a `systemd` unit for running the continer
and setting up ports 1812 and 1813.  The unit mounts a configuration
volume from `/srv/radiusd/raddb` onto `/etc/raddb`.

