FROM node:lts-alpine
MAINTAINER Haikel Ouaghrem <haikel.ben@gmail.com>

RUN apk add --update \
	bash \
	git \
	curl \
	&& rm -rf /var/cache/apk/*
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
ENTRYPOINT ["docker-entrypoint.sh"]
