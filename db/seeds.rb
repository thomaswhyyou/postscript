# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create! :name => 'First User', :email => 'user@example.com', :password => 'bitchplease', :password_confirmation => 'bitchplease'
User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'bitchplease', :password_confirmation => 'bitchplease'

channel1 = Channel.create! channel_name: 'wdi6-nyc'
channel2 = Channel.create! channel_name: 'wdi7-nyc'
channel3 = Channel.create! channel_name: 'lounge'

channel1.feeds.create(sender: 'ghose user', content: 'Test message 1!')
channel1.feeds.create(sender: 'naked fish', content: 'Test message 2!')

channel3.feeds.create(sender: 'stupid bear', content: 'Test message 1!')
channel3.feeds.create(sender: 'lazy eyes', content: 'Test message 2!')
channel3.feeds.create(sender: 'horny duck', content: 'Test message 4!')
channel3.feeds.create(sender: 'horny duck', content: 'Test message 5!')
channel3.feeds.create(sender: 'horny duck', content: 'Test message 6!')
channel3.feeds.create(sender: 'horny duck', content: 'Test message 7!')
channel3.feeds.create(sender: 'horny duck', content: 'Test message 8!')
channel3.feeds.create(sender: 'horny duck', content: 'Test message 9!')
channel3.feeds.create(sender: 'horny duck', content: 'Test message 10!')
channel3.feeds.create(sender: 'horny duck', content: 'Test message 11!')
channel3.feeds.create(sender: 'horny duck', content: 'Test message 12!')
channel3.feeds.create(sender: 'horny duck', content: 'Test message 13!')
