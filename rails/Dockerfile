FROM ruby:alpine
ENV LANG C.UTF-8

RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
# Uncomment except first time
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install --without production
COPY . /app
