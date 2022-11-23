FROM node:lts-alpine
MAINTAINER Haikel Ouaghrem <haikel.ben@gmail.com>

RUN apk add --update \
	bash \
	git \
	curl \
	&& rm -rf /var/cache/apk/*
RUN apk add --no-cache python2 && \
    python -m ensurepip && \
    pip install --upgrade pip setuptools	
ENTRYPOINT ["docker-entrypoint.sh"]
