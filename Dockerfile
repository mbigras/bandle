FROM alpine:edge
RUN apk add \
	build-base \
	git \
	libffi-dev \
	ruby-bundler \
	ruby-dev \
	ruby-full

WORKDIR /app
COPY . .
RUN bin/setup \
	&& rake install