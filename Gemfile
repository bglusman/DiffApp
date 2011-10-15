source 'http://rubygems.org'

gem 'heroku'
gem 'rake', '0.9.3.beta.1'
gem 'rails', '3.1.1'
gem 'jquery-rails'
gem 'haml-rails'
gem 'coffee-filter'
gem 'omniauth'

group :staging, :production do
  gem 'pg'
end

group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'sqlite3'
end

group :test do
  gem 'sqlite3'
  gem 'cucumber-rails'
  gem 'capybara-webkit'
  gem 'headless'
  gem 'database_cleaner'
end
