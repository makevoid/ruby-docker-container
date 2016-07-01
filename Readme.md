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
