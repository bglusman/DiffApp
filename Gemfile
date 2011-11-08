source 'http://rubygems.org'

gem 'heroku'
gem 'rake', '0.9.3.beta.1'
gem 'rails', '3.1.1'
gem 'jquery-rails'
gem 'haml-rails'
gem 'coffee-filter'
gem 'omniauth', '= 0.3.0'
# gem 'omniauth-twitter' #for omniauth 1.0
gem 'thumbs_up'
gem 'formtastic'
gem 'community_engine', '2.0.0.beta', :git => 'https://github.com/bglusman/communityengine.git', :branch => 'rails3'

group :staging, :production do
  gem 'pg'
end

group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'compass', '0.12.alpha.0'
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
