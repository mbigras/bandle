FROM alpine:edge
RUN apk add \
	git \
	ruby-bundler \
	ruby-full
WORKDIR /app
COPY . .
RUN bin/setup \
	&& rake install