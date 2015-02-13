FROM dockerfile/supervisor

##FTP SERVER
MAINTAINER marcos cano marcos.cano@galileo.edu

RUN apt-get update
RUN apt-get -y install  proftpd  olsrd 

RUN mkdir /var/log/dockemu
RUN echo "DefaultRoot   ~" >> /etc/proftpd/proftpd.conf

ADD supervisord_ftp.conf /tmp/supervisord.conf
CMD /sbin/ifconfig && supervisor -c /tmp/supervisord.conf
