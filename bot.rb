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
      end

      if body.include?('cat')
        message.body(Cat.fact)
        message.media(Cat.picture)
      end

      message.body('I only know about dogs or cats, sorry!') unless body.include?('dog') || body.include?('cat')
    end
    content_type 'text/xml'
    response.to_xml
  end
end
