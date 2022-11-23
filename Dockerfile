FROM alpine
MAINTAINER Haikel Ouaghrem <haikel.ben@gmail.com>

RUN apk add --update \
	bash \
	npm \
	git \
	curl \
	&& rm -rf /var/cache/apk/*
RUN apk add --no-cache python2 && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    rm -r /root/.cache
	
ENTRYPOINT ["docker-entrypoint.sh"]
