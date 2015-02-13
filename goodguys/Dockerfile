FROM dockerfile/supervisor

MAINTAINER marcos cano marcos.cano@galileo.edu

RUN apt-get update
RUN apt-get -y install openssh-server iptables nano olsrd ftp openjdk-7-jre

RUN mkdir -p /var/run/sshd
RUN mkdir /var/log/dockemu


ADD java/ /

ADD supervisord.conf /tmp/supervisord.conf

CMD supervisord -c /tmp/supervisord.conf
