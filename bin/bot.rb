require 'sinatra/base'
require './lib/idontknow'
require './lib/dog'
require './lib/cat'
require './lib/fox'
require './lib/owl'

class WhatsAppBot < Sinatra::Base
  dog = Dog.new
  cat = Cat.new
  fox = Fox.new
  owl = Owl.new
  i_dont_know = IDontKnow.new
  use Rack::TwilioWebhookAuthentication, ENV['TWILIO_AUTH_TOKEN'], '/bot'

  post '/bot' do
    body = params['Body'].downcase
    response = Twilio::TwiML::MessagingResponse.new

    response.message do |message|
      if body.include?('dog')
        message.body(dog.fact)
        message.media(dog.picture)
      elsif body.include?('cat')
        message.body(cat.fact)
        message.media(cat.picture)
      elsif body.include?('fox')
        message.body(fox.fact)
        message.media(fox.picture)
      elsif body.include?('owl')
        message.body(owl.fact)
        message.media(owl.picture)
      elsif body.match(/(hi!|hello|hello!|hey|tsup|hey!|morning|sup)/)
        message.body('Hi! want to talk about dogs or cats, ask me something')
      else
        message.body('I only know about dogs or cats, sorry!')
        message.media(i_dont_know.picture)
      end
    end
    content_type 'text/xml'
    response.to_xml
  end
end
