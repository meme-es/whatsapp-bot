require 'bundler'
Bundler.require

Envyable.load('./config/env.yml')

require './lib/bot.rb'
run WhatsAppBot
