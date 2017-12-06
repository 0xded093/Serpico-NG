FROM ubuntu:16.04

MAINTAINER Andrea De Dominicis <andrea.dedominicis.93@gmail.com>
ENTRYPOINT /bin/bash

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y git ruby ruby-dev build-essential make pkg-config libxml2-dev libglib2.0-dev libsqlite3-dev bundler
RUN git clone https://github.com/dedins/Serpico-NG
RUN cd Serpico-NG && bundler install
RUN cd .. && git clone -b "gem-v1.2.2-with-frozen-nilclass-fix" https://github.com/julienma/dm-types.git
RUN cd dm-types && gem build dm-types.gemspec && sudo gem install dm-types-1.2.2.gem

EXPOSE 8443
