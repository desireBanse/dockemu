FROM ubuntu:14.04

MAINTAINER Oscar Rodas orodas@galileo.edu

RUN apt-get update
RUN apt-get install -y ftp nano

COPY netconf.sh /
RUN chmod +x *.sh

ENTRYPOINT ["/netconf.sh"]
