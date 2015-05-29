require 'sinatra'
require 'sinatra/base'
require 'active_support'

ActiveSupport::JSON::Encoding.time_precision = 0

class Api < Sinatra::Base
  APP_VERSION = 0.1

  get '/version' do
    return { version: APP_VERSION }.to_json
  end
end
