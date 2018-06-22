FROM ruby:2.5.1-slim
MAINTAINER Maor Leger <maor.leger@gmail.com>

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# skip installing gem docs
RUN echo 'gem: --no-rdoc --no-ri' >> "$HOME/.gemrc"

RUN gem install bundler

ADD Gemfile $APP_HOME/Gemfile
ADD Gemfile.lock $APP_HOME/Gemfile.lock

ENV RAILS_ENV=production

RUN bundle install --jobs 20 --retry 5

ADD . $APP_HOME

# Clean up
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp*

CMD bundle exec puma -C config/puma.rb
