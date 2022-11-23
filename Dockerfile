FROM alpine
MAINTAINER Haikel Ouaghrem <haikel.ben@gmail.com>

RUN apk add --update \
	bash \
	npm \
	git \
	curl \
  	python3 \
	&& rm -rf /var/cache/apk/*
	
ENTRYPOINT ["docker-entrypoint.sh"]
