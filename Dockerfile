FROM ruby:alpine

ENV LANG C.UTF-8
ENV RUNTIME_PACKAGES="libxml2-dev libxslt-dev tzdata mariadb-client-libs nodejs ca-certificates"
ENV DEV_PACKAGES="build-base mariadb-dev"

RUN mkdir /app
WORKDIR /app

RUN apk --update add $RUNTIME_PACKAGES
RUN apk --update add $DEV_PACKAGES
RUN gem install bundler --no-document
RUN bundle config build.nokogiri --use-system-libraries

COPY app /app

RUN bundle install --without production
