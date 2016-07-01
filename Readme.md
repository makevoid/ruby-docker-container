# makevoid/ruby
### Docker container

This image contains ruby2.3 on debian 8, it is a basic image for ruby app development

- Ruby version is 2.3.1 (at the moment of writing this readme, otherwise it will be the latest "official" ruby 2.3)

- Debian 8

- Adds Gemfile first, caches bundle installs

- Sets the first always required env variable "ENV RACK_ENV production", you can override it with "ENV RACK_ENV development" of course in your Dockerfile.

- Sets the second most used env variable "ENV DOCKER 1" (you can change it to DOCKER=true) or really anything you prefer, as long as you have a way to detect a run inside a dockerized environment - This is the ruby detection code `DOCKER = ENV["DOCKER"] == "1"; !DOCKER ? "localhost" : "docker_host"`

size: 769.7 MB

@makevoid


---

Using this image as source (`FROM`) in your Dockerfile with a Dockerfile like this

```docker
FROM makevoid/ruby

ADD Gemfile      /app
ADD Gemfile.lock /app
RUN bundle

ADD .     /app
RUN bundle

CMD bundle exec rackup -o 0.0.0.0
# or:
#
# CMD bundle exec ruby app.rb

# Then build and run:
#
# docker build .
# docker run -p 4567:4567 image_hash
#
# finally, visit: http://localhost:4567

```



Full example: <https://github.com/makevoid/ruby-docker-container/tree/master/example>
