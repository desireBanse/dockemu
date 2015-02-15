FROM ubuntu:14.04

MAINTAINER Oscar Rodas orodas@galileo.edu

RUN apt-get update
RUN apt-get install -y proftpd nano olsrd supervisor

COPY netconf.sh /
RUN chmod +x *.sh

RUN mkdir /var/log/dockemu
RUN echo "DefaultRoot   ~" >> /etc/proftpd/proftpd.conf

COPY supervisord_ftp.conf /tmp/supervisord.conf
CMD /sbin/ifconfig && /usr/bin/supervisord -c /tmp/supervisord.conf

