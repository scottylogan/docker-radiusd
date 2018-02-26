NAMESPACE=scottylogan
IMAGE=radiusd

all:
	$(MAKE) `arch`

x86_64: Dockerfile.x86_64
	docker build -t ${NAMESPACE}/${IMAGE}:latest -f Dockerfile.x86_64 .

armv7l: Dockerfile.rpi
	docker build -t ${NAMESPACE}/rpi-${IMAGE}:latest -f Dockerfile.rpi .

Dockerfile.x86_64: Dockerfile.common
	echo 'FROM centos:7' >$@
	cat $< >>$@

Dockerfile.rpi: Dockerfile.common
	echo 'FROM scottylogan/rpi-centos7' >$@
	cat $< >>$@

