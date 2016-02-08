FROM trojanspike/rpi-nvm:iojs-3.0.0-onbuild

RUN apt-get update && apt-get install i2c-tools -y

ENV PORT 1374

EXPOSE 1374

# docker build --rm -t app:i2c .
# docker run -P --privileged app