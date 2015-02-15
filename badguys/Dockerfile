FROM dockerfile/supervisor

MAINTAINER marcos cano marcos.cano@galileo.edu

RUN apt-get update
RUN apt-get -y install openssh-server nano olsrd ftp nmap

WORKDIR /

RUN mkdir /var/log/dockemu

COPY files/ /
RUN chmod +x *.sh

ENTRYPOINT ["/forever.sh"]
