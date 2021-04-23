require "slack-notify"
require 'clockwork'
require 'active_support/time'
require 'dotenv'
Dotenv.load

module Clockwork
  client = SlackNotify::Client.new(webhook_url: ENV['WEBHOOK_URL'])
  
  every(3.minutes, 'notify') do
    client.notify("Guten Morgen!")
  end
end
