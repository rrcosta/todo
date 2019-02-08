FROM ruby:2.6.0-alpine3.8 
RUN apt-get update -qq && apt-get install -y build-essential libpq-d ev nodejs
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp