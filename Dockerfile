FROM resin/rpi-raspbian:wheezy
MAINTAINER Lee Mc Kay <v3047-githib@yahoo.co.uk>

ENV NVM_DIR /nvm
ENV NVM_VERSION v0.25.4

RUN apt-get update && \
apt-get install -y --no-install-recommends build-essential git libssl-dev python ca-certificates curl && \
rm -rf /var/lib/apt/lists/*

RUN /bin/bash -c "git clone https://github.com/creationix/nvm.git ${NVM_DIR} && cd ${NVM_DIR} && git checkout ${NVM_VERSION}"

RUN echo "source /nvm/nvm.sh" >> /root/.bashrc