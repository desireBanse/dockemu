FROM dockerfile/supervisor

MAINTAINER Oscar Rodas orodas@galileo.edu, marcos cano marcos.cano@galileo.edu

RUN apt-get update
RUN apt-get install -y proftpd nano olsrd supervisor iptables  openjdk-7-jre 
RUN mkdir -p /var/run/sshd


RUN mkdir /var/log/dockemu
RUN echo "DefaultRoot   ~" >> /etc/proftpd/proftpd.conf


ADD netconf.sh /
ADD ignite.sh /

RUN chmod +x ignite.sh
RUN chmod +x netconf.sh

ADD supervisord_ftp.conf /tmp/supervisord.conf

ADD java/ /

ENV ipaddress 172.17.5.100

CMD /ignite.sh

