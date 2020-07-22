FROM splunk/splunk:latest
LABEL maintainer="korben@kirscht.com"

#ENV DEBIAN_FRONTEND noninteractive

#RUN apt-get update \
# && apt-get install -yq gnupg bind9 bind9utils bind9-doc dnsutils wget net-tools \
# && useradd -m vagrant

#WORKDIR /
#COPY files/etc/bind/ /etc/bind/
#COPY files/etc/apt/ /etc/apt
#RUN mkdir -p /var/log/bind/ && chown bind:bind /var/log/bind
#RUN wget -q http://www.webmin.com/jcameron-key.asc -O- | apt-key add
#RUN apt-get update && apt-get install -yq webmin

#COPY files/bin/entrypoint.sh /bin/entrypoint.sh
#RUN chmod 755 /bin/entrypoint.sh && chown vagrant:vagrant /bin/entrypoint.sh
#RUN mkdir /var/log/entrypoint && chown vagrant:vagrant /var/log/entrypoint

#USER vagrant
EXPOSE 8000/tcp
#EXPOSE 53/udp
#ENTRYPOINT ["/bin/bash","/bin/entrypoint.sh"]

