require 'bundler'
Bundler.require :default

DOCKER  = ENV["DOCKER"] == "1"
APP_ENV = ENV["RACK_ENV"] || "development"

get '/' do
  "HELLO WORLD! - running in docker: #{DOCKER}, app env: #{APP_ENV}"
end
