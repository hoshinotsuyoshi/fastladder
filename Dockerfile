FROM ruby:2.6.6

RUN apt-get update -qq && \
apt-get install -y \
nodejs \
build-essential

RUN apt-get install -y curl apt-transport-https wget

RUN mkdir /app
WORKDIR /app

RUN gem i foreman

ADD Gemfile* /app/

RUN bundle install -j9 --retry 3

ADD . /app
RUN SECRET_KEY_BASE=dummy bin/rails assets:precompile
