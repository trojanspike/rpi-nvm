DOCKER_IMAGE_VERSION=iojs-3.0.0
DOCKER_IMAGE_NAME=trojanspike/rpi-nvm
DOCKER_IMAGE_TAGNAME=$(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_VERSION)

default: build

build:
	docker build --rm -f Dockerfile -t $(DOCKER_IMAGE_TAGNAME) .

push:
	docker push $(DOCKER_IMAGE_NAME)

test:
	docker run --rm $(DOCKER_IMAGE_TAGNAME) nvm ls

version:
	docker run --rm $(DOCKER_IMAGE_TAGNAME) node --version
	docker run --rm $(DOCKER_IMAGE_TAGNAME) npm --version