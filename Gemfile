source 'http://rubygems.org'

gem 'rails', '3.1.3'

group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development do
  gem 'pry-rails', '~> 0.1.3'
end

group :test, :development do
  gem 'rspec-rails'
end

group :test do
  gem 'factory_girl_rails'
  gem 'ffaker'
  gem 'capybara'
  gem 'spork', '~> 0.9.0.rc'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'fuubar'
  gem 'rspec-cells'
  gem 'timecop', '~> 0.3.5'
  gem 'syntax'
end


platform :jruby do
  gem 'activerecord-jdbcmysql-adapter'
  gem 'jruby-openssl'
end

platform :ruby do
  gem 'mysql2', '~> 0.3.11'
end
