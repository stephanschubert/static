source "http://rubygems.org"
gemspec

gem 'sprockets'
gem 'rack'
gem 'rails'

gem 'mongoid'
gem 'bson_ext'

gem 'haml'
gem 'sass'
gem 'sass-rails'
gem 'jquery-rails'

gem 'RedCloth',     require: 'redcloth'
gem 'formtastic'

gem 'thin'

# FIXME
#gem 'scss', :require => "scss", :path => '../scss'
#gem 'santas-little-helpers', :path => '../santas-little-helpers'

gem 'scss', :require => "scss", :git => 'git@github.com:jazen/scss.git'
gem 'santas-little-helpers', :git => 'git@github.com:jazen/santas-little-helpers.git'
gem 'mongoid-plugins', git: 'git://github.com/jazen/mongoid-plugins.git'

group :test, :development do
  gem 'simplecov', '>= 0.4.0', :require => false
  gem 'fuubar'

  gem 'database_cleaner', '>= 0.6.6'

  gem 'rspec', '>= 2.5.0'
  gem 'rspec-rails', '>= 2.5.0'
  gem 'mongoid-rspec', '>= 1.4.1'
  gem 'capybara', '~> 1.0.0' # :git => 'git://github.com/jnicklas/capybara.git'
  gem 'capybara-webkit', git: 'git://github.com/thoughtbot/capybara-webkit.git'

  gem 'fabrication'
  gem 'timecop', '>= 0.3.5'

  # Blazin' fast, continous testing
  gem 'watchr'
  gem 'spork', '0.9.0.rc4'
end
