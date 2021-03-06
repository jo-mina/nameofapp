source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use sqlite3 as the database for Active Record
group :development, :test do
	gem 'sqlite3'
end
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'


group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
	gem 'pg'
end

#Provides authentification functions for Rails
gem 'devise'

#Provides authorisation functionality in rails
gem 'cancancan', '~> 1.10'

#Gem file for pagination. Split results into multiple pages
gem 'will_paginate', '~> 3.1.1'

#grouped gems for development and test environments
group :development, :test do
  #Gem for Rspec with rails - BDD frameowrk for testing
  gem 'rspec-rails', '~>3.5'
  #Gem for FactoryGirl 
  gem "factory_girl_rails", "~>4.0"
    # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

#%w[rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].each do |lib|
#  gem lib, :git => "https://github.com/rspec/#{lib}.git", :branch => 'master'
#end

#Gem for controller testing (functional)
gem 'rails-controller-testing'

#gem for stripe to allow payments to be transacted on your website
gem 'stripe'

#checks for security vulnerabilities within your application
gem 'brakeman'

#Ruby memcache client
gem 'dalli'

#Redis in store memory database
gem 'redis-rails'

#middleware to display the speed badge of our page
gem 'rack-mini-profiler'