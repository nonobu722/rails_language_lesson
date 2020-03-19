# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Use specific version
gem 'sprockets', '~> 3.7.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
# Use haml instead of erb
gem 'haml-rails', '~> 2.0'
# Use devise for authentication
gem 'devise', '~> 4.7.1'
gem 'devise-bootstrap-views', '~> 1.0.0'
gem 'devise-i18n', '~> 1.9'
gem 'devise-i18n-views', '~> 0.3'
# Use for translation
gem 'rails-i18n', '~> 6.0.0'
# Use for upload image
gem 'carrierwave', '~> 2.1.0'
gem 'cloudinary', '~> 1.13.0'
gem 'mini_magick', '~> 4.10.0'

group :production do
  gem 'pg', '~> 1.2.2'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Use for formatting
  gem 'rubocop', '~> 0.80.1', require: false
  gem 'rubocop-performance', '~> 1.5.2'
  gem 'rubocop-rails', '~> 2.4.2'
  gem 'ruby-debug-ide', '~> 0.7.0', require: false
  gem 'solargraph', '~> 0.38.5'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background.
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '~> 1.4'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
