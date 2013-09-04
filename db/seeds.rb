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

channel1.feeds.create(type: 'text', time_sent: Time.now, from_user: 'thomaswhyyou', message: 'Test message 1!')
channel1.feeds.create(type: 'text', time_sent: Time.now, from_user: 'thomaswhyyou', message: 'Test message 2!')
