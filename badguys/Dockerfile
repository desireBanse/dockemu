FROM dockerfile/supervisor

MAINTAINER marcos cano marcos.cano@galileo.edu

RUN apt-get update
RUN apt-get -y install  openssh-server nano olsrd

WORKDIR /

RUN mkdir /var/log/dockemu


ADD files/ /
RUN chmod +x forever.sh

CMD forever.sh