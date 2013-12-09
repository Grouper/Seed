require 'rack-livereload'
require './app'

use Rack::LiveReload, live_reload_port: 35730
run App
