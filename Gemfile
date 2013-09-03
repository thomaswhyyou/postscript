source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'
gem 'thin'
gem 'mongoid', github: 'mongoid/mongoid'

gem "rspec-rails", ">= 2.11.0", :group => [:development, :test]
gem "capybara", ">= 1.1.2", :group => :test
gem "database_cleaner", ">= 0.8.0", :group => :test
gem "mongoid-rspec", ">= 1.4.6", :group => :test
gem "email_spec", ">= 1.2.1", :group => :test
gem "cucumber-rails", ">= 1.3.0", :group => :test, :require => false
gem "launchy", ">= 2.1.2", :group => :test
gem "factory_girl_rails", ">= 4.0.0", :group => [:development, :test]
gem "devise"

gem 'omniauth'
gem 'omniauth-github'

group :development, :test do
  gem 'dotenv-rails'

  gem 'pry-rails'           # Causes rails console to open pry
                            # https://github.com/rweng/pry-rails
  gem 'pry-debugger'        # Adds step, next, finish, and continue commands and breakpoints
                            # https://github.com/nixme/pry-debugger
  gem 'pry-stack_explorer'  # Navigate the call-stack
                            # https://github.com/pry/pry-stack_explorer
  gem 'quiet_assets'        # Turns off the Rails asset pipeline log
                            # https://github.com/evrone/quiet_assets
  gem 'meta_request'        # Supporting gem for Rails Panel (Google Chrome extension for Rails development).
                            # https://github.com/dejan/rails_panel/tree/master/meta_request
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
