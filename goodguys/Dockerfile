FROM dockerfile/supervisor

MAINTAINER marcos cano marcos.cano@galileo.edu

RUN apt-get update
RUN apt-get -y install  openssh-server nano olsrd

RUN mkdir -p /var/run/sshd
RUN mkdir /var/log/dockemu


ADD java/ /

ADD supervisord.conf /tmp/supervisord.conf

CMD olsrd -i eth0 -d 1 | tee  /var/log/dockemu/$RANDOM.log