
FROM ubuntu:14.10
MAINTAINER marianmoldovan

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

# Install Ethereum
RUN apt-get install -q -y software-properties-common
RUN add-apt-repository ppa:ethereum/ethereum
RUN add-apt-repository ppa:ethereum/ethereum-dev
RUN apt-get update
RUN apt-get install -q -y geth

EXPOSE 8545
EXPOSE 30303

# ENTRYPOINT ["/usr/bin/geth"]
