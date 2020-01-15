FROM ubuntu:18.04
MAINTAINER Shawn Bow <shawnbow81@gmail.com>

RUN apt-get update
RUN apt-get install -y wget

RUN wget https://github.com/eosio/eos/releases/download/v2.0.0/eosio_2.0.0-1-ubuntu-18.04_amd64.deb
RUN apt install -y ./eosio_2.0.0-1-ubuntu-18.04_amd64.deb
RUN rm -f ./eosio_2.0.0-1-ubuntu-18.04_amd64.deb

RUN wget https://github.com/eosio/eosio.cdt/releases/download/v1.7.0/eosio.cdt_1.7.0-1-ubuntu-18.04_amd64.deb
RUN apt install -y ./eosio.cdt_1.7.0-1-ubuntu-18.04_amd64.deb
RUN rm -f ./eosio.cdt_1.7.0-1-ubuntu-18.04_amd64.deb

