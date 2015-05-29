require 'rubygems'
require 'middleman/rack'
require './app/api'

# run Rack::Cascade.new( [Api, Middleman.server] )
run Rack::URLMap.new({
  '/' => Middleman.server,
  '/api' => Api.new
})
