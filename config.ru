require 'bundler'
Bundler.require

Envyable.load('./config/env.yml')

require_relative './bin/bot.rb'
run WhatsAppBot
