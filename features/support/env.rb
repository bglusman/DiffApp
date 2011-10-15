require 'rubygems'
require 'cucumber/rails'
require 'database_cleaner/cucumber'
Capybara.default_driver = :webkit
Capybara.default_selector = :css
ActionController::Base.allow_rescue = false
DatabaseCleaner.strategy = :truncation
