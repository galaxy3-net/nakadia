.PHONY: default
default:
	echo default target

.PHONY: build
build:
	(cd Docker ; sudo -E docker build -t nakadia .)
	(cd Docker ; sudo -E docker tag nakadia galaxy3/nakadia:latest)
	(cd Docker ; sudo -E docker push galaxy3/nakadia:latest)

#.PHONY: start
#start:
#	#sudo -E docker run -d -p 3128:3128 -p 3129:3129 --name squid squid
#	sudo -E docker run -d --name splunk \
#		--mount type=bind,source="$(PWD)/files/etc/hosts",target="/etc/hosts" \
#		--mount type=bind,source="$(PWD)/files/etc/resolv.conf",target="/etc/resolv.conf" \
#		-p 10.55.55.2:53:53/tcp \
#		-p 10.55.55.2:53:53/udp \
#		galaxy3/bind:latest


.PHONY: connect
connect:
	sudo docker -E exec -it --user splunk splunk /bin/bash

.PHONY: stop
stop:
	sudo -E docker stop splunk

.PHONY: rm
rm: stop
	sudo -E docker rm splunk

.PHONY: pull
pull:
	sudo -E docker pull galaxy3/splunk:latest

