FROM ubuntu:20.04

RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get -y update \
 && apt-get -y install inkscape imagemagick python

CMD /bin/bash
