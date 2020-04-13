require 'sinatra/base'
require './lib/animals'

class WhatsAppBot < Sinatra::Base
  use Rack::TwilioWebhookAuthentication, ENV['TWILIO_AUTH_TOKEN'], '/bot'

  post '/bot' do
    body = params['Body'].downcase
    response = Twilio::TwiML::MessagingResponse.new

    response.message do |message|
      if body.include?('dog')
        message.body(Dog.fact)
        message.media(Dog.picture)
      elsif body.include?('cat')
        message.body(Cat.fact)
        message.media(Cat.picture)
      elsif body.include?('fox')
        # message.body(Fox.fact)
        message.media(Fox.picture)
      elsif body.include?('hi') || body.include?('hello')
        message.body('Hi! whant to talk about dogs or cats, ask me something')
      else
        message.body('I only know about dogs or cats, sorry!')
      end
    end
    content_type 'text/xml'
    response.to_xml
  end
end
