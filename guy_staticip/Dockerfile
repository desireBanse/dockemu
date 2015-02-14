FROM ubuntu:14.04

MAINTAINER Oscar Rodas orodas@galileo.edu

RUN apt-get update
RUN apt-get install -y ftp nano

#RUN echo "auto eth0" >> /etc/network/interfaces

#RUN echo "iface eth0 inet static" >> /etc/network/interfaces

#RUN echo "address 172.17.5.100" >> /etc/network/interfaces

#RUN echo "netmask 255.255.0.0" >> /etc/network/interfaces

#RUN ifdown eth0

#RUN ifup eth0

COPY netconf.sh /
RUN chmod +x *.sh

#ENTRYPOINT [/netconf.sh]
