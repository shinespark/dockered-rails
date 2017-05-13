FROM ruby:alpine

ENV LANG C.UTF-8
ENV RUNTIME_PACKAGES="libxml2-dev libxslt-dev tzdata mariadb-client-libs nodejs ca-certificates"
ENV DEV_PACKAGES="build-base mariadb-dev"

RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
# Uncomment except first time
COPY Gemfile.lock /app/Gemfile.lock

RUN apk --update add $RUNTIME_PACKAGES
RUN apk --update add --virtual build-dependencies $DEV_PACKAGES
RUN gem install bundler --no-document
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle install --without production
RUN apk del build-dependencies
COPY . /app
