FROM trojanspike/rpi-nvm:init
MAINTAINER Lee Mc Kay <v3047-githib@yahoo.co.uk>

ENV NVM_NODE_VERSION iojs-3.0.0

RUN /bin/bash -c "source ${NVM_DIR}/nvm.sh && nvm install ${NVM_NODE_VERSION} && nvm use ${NVM_NODE_VERSION} && nvm alias default ${NVM_NODE_VERSION}"

ADD entrypoint.sh /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]

CMD ["node"]