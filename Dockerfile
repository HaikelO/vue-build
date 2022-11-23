FROM alpine
MAINTAINER Haikel Ouaghrem <haikel.ben@gmail.com>

RUN apk add --update \
	bash \
	npm \
	git \
	curl \
  	python3 \
	&& rm -rf /var/cache/apk/*
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
	
ENTRYPOINT ["docker-entrypoint.sh"]
