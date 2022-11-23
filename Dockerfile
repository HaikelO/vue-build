FROM node:lts-alpine
MAINTAINER Haikel Ouaghrem <haikel.ben@gmail.com>

RUN apk add --update \
	bash \
	git \
	curl \
	&& rm -rf /var/cache/apk/*
	
ENTRYPOINT ["docker-entrypoint.sh"]
