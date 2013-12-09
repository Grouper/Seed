require './app'
require 'rack-livereload'
use Rack::LiveReload
run App