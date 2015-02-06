FROM ubuntu:14.04

MAINTAINER marcos cano marcos.cano@galileo.edu

RUN apt-get update
RUN apt-get -y install hydra openssh-server



CMD echo $(date) > /var/log/lastlog && tail -f /var/log/lastlog
#CMD hydra etc etc