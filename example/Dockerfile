FROM makevoid/ruby
# FROM 61c473a01d56

ADD Gemfile      /app
ADD Gemfile.lock /app
RUN bundle

ADD .     /app
RUN bundle

CMD bundle exec ruby app.rb
# CMD bundle exec rackup -o 0.0.0.0

# docker build .
# docker run -p 4567:4567 9585fda8e21e
