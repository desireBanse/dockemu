FROM dockerfile/supervisor

##FTP SERVER
MAINTAINER marcos cano marcos.cano@galileo.edu

RUN apt-get update
RUN apt-get -y install  vsftpd  olsrd 

RUN mkdir /var/log/dockemu


ADD supervisord_ftp.conf /tmp/supervisord.conf
CMD supervisor -c /tmp/supervisord.conf
