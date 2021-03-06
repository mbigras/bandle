FROM alpine:edge
ENV BANDLE_ENV=production
RUN apk add \
	git \
	ruby-bundler \
	ruby-full

WORKDIR /app
COPY . .
RUN bundle install --without development \
		&& rake install