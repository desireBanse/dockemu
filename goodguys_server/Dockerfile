FROM dockerfile/supervisor

MAINTAINER marcos cano marcos.cano@galileo.edu

RUN apt-get update

RUN apt-get -y install \
          openssh-server\
          iptables \
          olsrd \
          proftpd \
          nano \
          openjdk-7-jre

RUN mkdir -p /var/run/sshd

RUN mkdir /var/log/dockemu

RUN echo "DefaultRoot   ~" >> /etc/proftpd/proftpd.conf

COPY java/ /

COPY supervisord.conf /tmp/supervisord.conf

CMD supervisord -c /tmp/supervisord.conf
