require 'sinatra/base'

class WhatsAppBot < Sinatra::Base
  get '/' do
    'Hello World!'
  end
end
