require 'rack-livereload'
require './app'

use Rack::LiveReload
run App
