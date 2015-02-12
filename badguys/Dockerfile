FROM dockerfile/supervisor

MAINTAINER marcos cano marcos.cano@galileo.edu

RUN apt-get update
RUN apt-get -y install hydra openssh-server nano olsrd

RUN mkdir /var/log/dockemu



CMD olsrd -i eth0 -d 1 | tee  /var/log/dockemu/$RANDOM.log