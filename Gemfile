source 'https://rubygems.org'
git_source(:github) { |repo| 'https://github.com/#{repo}.git' }

ruby '2.6.2'

gem 'rails'
gem 'puma'
gem 'pg'
gem 'sqlite3'

gem 'responders'

gem 'rswag-api'
gem 'rswag-ui'

gem 'sendgrid-ruby'
gem 'twilio-ruby'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'rspec-parameterized'
  gem 'rswag-specs'
  gem 'simplecov'
  gem 'simplecov-html'
  gem 'factory_bot_rails'
  gem 'database_cleaner'
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
end
