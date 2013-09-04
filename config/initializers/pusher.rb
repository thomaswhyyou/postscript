require 'pusher'

# Configure the Pusher server.
# Pusher.encrypted = true
# Pusher.host   = 'api.jagan.io'
# Pusher.port   = 443

# Configure the application.
Pusher.app_id = ENV['PUSHER_APP_ID']
Pusher.key = ENV['PUSHER_KEY']
Pusher.secret = ENV['PUSHER_SECRET']

