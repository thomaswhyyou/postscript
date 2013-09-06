# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# User.create! :name => 'First User', :email => 'user@example.com', :password => 'bitchplease', :password_confirmation => 'bitchplease'
# User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'bitchplease', :password_confirmation => 'bitchplease'

# channel1 = Channel.create! channel_name: 'wdi6-nyc'
# channel2 = Channel.create! channel_name: 'wdi7-nyc'
init_channel = Channel.create! channel_name: 'lounge'

# channel1.feeds.create(sender: 'testuser', content: 'Test message 1!')
# channel1.feeds.create(sender: 'testuser', content: 'Test message 2!')

init_channel.feeds.create(sender: 'testuser', content: 'Test message 1!')
init_channel.feeds.create(sender: 'testuser', content: 'Test message 2!')
init_channel.feeds.create(sender: 'testuser', content: 'Test message 4!')
init_channel.feeds.create(sender: 'testuser', content: 'Test message 5!')
init_channel.feeds.create(sender: 'testuser', content: 'Test message 6!')
init_channel.feeds.create(sender: 'testuser', content: 'Test message 7!')
init_channel.feeds.create(sender: 'testuser', content: 'Test message 8!')
init_channel.feeds.create(sender: 'testuser', content: 'Test message 9!')
init_channel.feeds.create(sender: 'testuser', content: 'Test message 10!')
init_channel.feeds.create(sender: 'testuser', content: 'Test message 11!')
init_channel.feeds.create(sender: 'testuser', content: 'Test message 12!')
init_channel.feeds.create(sender: 'testuser', content: 'Test message 13!')
