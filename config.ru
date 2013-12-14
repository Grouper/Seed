require 'rack-livereload'
require './app'

if ENV["RACK_ENV"] == "development"
  require 'rack-livereload'
  use(Rack::LiveReload, live_reload_port: 35730)
end

run App