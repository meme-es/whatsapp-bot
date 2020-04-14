require 'sinatra/base'
require './lib/random'
require './lib/animals'

class WhatsAppBot < Sinatra::Base
  random = Random.new
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
      elsif body.match(/(hi!|hello|hello!)/)
        message.body('Hi! want to talk about dogs or cats, ask me something')
      else
        message.body('I only know about dogs or cats, sorry!')
        message.media(random.url)
      end
    end
    content_type 'text/xml'
    response.to_xml
  end
end
