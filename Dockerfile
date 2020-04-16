FROM ruby:2.3.7


RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /factorial


WORKDIR /factorial


COPY Gemfile /factorial/Gemfile
COPY Gemfile.lock /factorial/Gemfile.lock




RUN bundle install

# Make port 3000 available to the world outside this container

ADD . /factorial
