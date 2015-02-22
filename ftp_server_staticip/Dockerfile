FROM dockerfile/supervisor

MAINTAINER Oscar Rodas orodas@galileo.edu, marcos cano marcos.cano@galileo.edu

RUN apt-get update
RUN apt-get install -y proftpd nano olsrd supervisor iptables rsyslog openjdk-7-jre 
RUN mkdir -p /var/run/sshd


RUN mkdir /var/log/dockemu
RUN echo "DefaultRoot   ~" >> /etc/proftpd/proftpd.conf

WORKDIR /
ADD netconf.sh /
ADD ignite.sh /

RUN chmod +x /ignite.sh
RUN chmod +x /netconf.sh

ADD supervisord_ftp.conf /tmp/supervisord.conf

ADD java/ /

ENV ipaddress 172.17.5.100

RUN echo "  *.* @192.168.8.66" >>  /etc/rsyslog.conf

RUN  /usr/bin/awk '/SystemLog/ {$0="#"$0}1'  /etc/proftpd/proftpd.conf
RUN echo ' LogFormat default "%h %l %u %t \"%r\" %s %b"' >> /etc/proftpd/proftpd.conf
RUN echo  'LogFormat auth "%t %H ip-dst:%L Failed password for invalid user %U from %a %s" ' >> /etc/proftpd/proftpd.conf
RUN echo "ExtendedLog /var/log/auth.log AUTH auth  >> /etc/proftpd/proftpd.conf
RUN echo "ExtendedLog /var/log/proftpd.log ALL default"  >> /etc/proftpd/proftpd.conf

CMD /ignite.sh

