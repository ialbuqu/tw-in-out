source 'http://rubygems.org'
ruby "2.0.0"

gem 'rails', '3.2.14'
gem 'devise', '2.0.0'
gem 'omniauth-google-oauth2'
gem "pg", "~> 0.16.0"
gem 'jquery-rails'

group :development, :test do
  gem "rspec-rails", "~> 2.11.0"
  gem 'factory_girl_rails', '~> 4.2.0'
  gem 'jasmine'
  gem 'pry'
end

group :test do
  gem "rspec", "~> 2.11.0"
  gem 'rspec-instafail'
  gem 'shoulda-matchers', '~> 1.2'
  gem 'database_cleaner'
  gem 'guard-rspec'
  gem 'guard-livereload'
  gem 'terminal-notifier-guard'
  gem 'rb-fsevent', '~> 0.9.1'
  gem 'simplecov', :require => false
  gem 'turn', '0.8.2', :require => false
  gem "webrat", "~> 0.7.3"
end

group :production do
  gem 'thin'
end

group :assets do
  gem 'jasmine-jquery-rails'
  gem 'sass-rails',   '~> 3.2.3'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
end

