source "http://rubygems.org"
gemspec

gem 'sprockets'
gem 'rack'
gem 'rails', '~> 3.2'
gem 'mongoid'
gem 'bson_ext'
gem 'haml'
gem 'sass'
gem 'sass-rails'
gem 'jquery-rails'
gem 'RedCloth', require: 'redcloth'
gem 'formtastic'
gem 'thin'
gem 'scss', require: "scss", :git => 'git@github.com:jazen/scss.git'
gem 'santas-little-helpers', :git => 'git@github.com:jazen/santas-little-helpers.git'
gem 'mongoid-plugins', git: 'git@github.com:jazen/mongoid-plugins.git'

group :test, :development do
  gem 'pry-byebug'
end

group :test do
  gem 'simplecov', require: false
  # TODO: 1.4.0 is currently broken for usage of mongoid/truncation strategy.
  gem 'database_cleaner', '1.3.0'
  gem 'fivemat'

  gem 'rspec'
  gem 'rspec-rails'
  gem 'test-unit', '~> 3.0'
  gem 'mongoid-rspec'
  gem 'capybara'
  gem 'capybara-webkit'

  gem 'fabrication'
  gem 'timecop'

  # Blazin' fast, continous testing
  gem 'watchr'
  gem 'spork'
end
