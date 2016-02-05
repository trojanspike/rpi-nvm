FROM trojanspike/rpi-nvm:iojs-3.0.0
MAINTAINER Lee Mc Kay <v3047-githib@yahoo.co.uk>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN /bin/bash -c "source /nvm/nvm.sh && npm install"
ONBUILD COPY . /usr/src/app

CMD [ "npm", "start" ]