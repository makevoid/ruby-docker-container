FROM ruby:2.3

# add coffeescript
RUN apt-get update
RUN apt-get install -y git nodejs npm && \
    npm install coffee-script

RUN mkdir /app
WORKDIR   /app


ENV BUNDLE_PATH /tmp/bundle

ENV RACK_ENV production
ENV DOCKER   1


EXPOSE 4567


CMD ["irb"]


# Your dockerfile will look like this:
#
#
# FROM makevoid:ruby
#
# ADD Gemfile      /app
# ADD Gemfile.lock /app
# RUN bundle
#
# ADD .     /app
# RUN bundle
#
# CMD bundle exec rackup -o 0.0.0.0
