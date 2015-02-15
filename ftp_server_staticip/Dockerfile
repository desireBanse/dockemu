FROM ubuntu:14.04

MAINTAINER Oscar Rodas orodas@galileo.edu

RUN apt-get update
RUN apt-get install -y proftpd nano olsrd supervisor

RUN mkdir /var/log/dockemu
RUN echo "DefaultRoot   ~" >> /etc/proftpd/proftpd.conf


ADD netconf.sh /
ADD ignite.sh /

RUN chmod +x *.sh
ADD supervisord_ftp.conf /tmp/supervisord.conf

ENV ipaddress 172.17.5.100

CMD /ignite.sh

