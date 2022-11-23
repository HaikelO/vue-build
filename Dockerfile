FROM alpine
MAINTAINER Haikel Ouaghrem <haikel.ben@gmail.com>

RUN apk add --update \
	bash \
	npm \
	git \
	curl \
  	python2 \
	&& rm -rf /var/cache/apk/*
RUN python -m ensurepip
RUN pip install --no-cache --upgrade pip setuptools
	
ENTRYPOINT ["docker-entrypoint.sh"]
