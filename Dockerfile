FROM ubuntu:14.04

MAINTAINER marcos cano marcos.cano@galileo.edu

RUN apt-get update
RUN apt-get -y install hydra openssh-server nano 

RUN mkdir /var/log/dockemu

ADD docker/passwords /
ADD docker/users /

ADD docker/hydra.sh /
RUN chmod +x /hydra.sh

ENV server 192.168.8.66
ENTRYPOINT ["/hydra.sh"] 
