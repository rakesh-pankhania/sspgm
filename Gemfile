source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Ruby. https://github.com/ruby/ruby
ruby '~> 3.3.9'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 7.1.0'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.5'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 6.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :test do
  # A mocking and stubbing library for Ruby
  # https://github.com/freerange/mocha
  gem "mocha"
end

group :development do
  # Preview mail in the browser instead of sending.
  # https://github.com/ryanb/letter_opener
  gem 'letter_opener'
  # Listens to file modifications and notifies you about the changes
# https://github.com/guard/listen
gem 'listen', '~> 3.5'
  # Access an IRB console on exception pages or by using <%= console %>
  # https://github.com/rails/web-console
  gem 'web-console', '>= 3.3.0'
  # Speeds up development by keeping your application running in the background.
  # https://github.com/rails/spring
  gem 'spring'
  # Makes Spring watch the filesystem for changes using Listen
  # https://github.com/jonleighton/spring-watcher-listen
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Bootstrap 4 Ruby Gem for Rails
# https://github.com/twbs/bootstrap-rubygem
gem 'bootstrap', '~> 4.3.1'
# Flexible authentication solution for Rails with Warden
# https://github.com/plataformatec/devise
gem 'devise'
# Shim to load environment variables from .env into ENV
# https://github.com/bkeepers/dotenv
gem 'dotenv-rails'
# Easily include static pages in your Rails app.
# https://github.com/thoughtbot/high_voltage
gem 'high_voltage', '~> 3.0.0'
# A gem to automate using jQuery with Rails
# https://github.com/rails/jquery-rails
gem 'jquery-rails'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
