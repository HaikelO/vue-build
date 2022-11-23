FROM node:lts-alpine
MAINTAINER Haikel Ouaghrem <haikel.ben@gmail.com>

RUN apk add --update \
	bash \
	git \
	curl \
	g++ \
	make \
	python2 \
	&& rm -rf /var/cache/apk/*
ENTRYPOINT ["docker-entrypoint.sh"]
