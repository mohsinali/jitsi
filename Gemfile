source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
ruby '2.4.1'
gem 'rails', '~> 5.2.2'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap-sass'
gem 'devise'
gem 'high_voltage'
gem 'jquery-rails'
gem 'pg'
gem 'slim-rails'
gem 'friendly_id', '~> 5.2.4'
gem 'paloma', '~> 5.1.0'
gem 'figaro'
gem 'rolify'
gem 'sendgrid-actionmailer'
gem 'rails_email_preview', '~> 2.2.1'
group :development do
  gem 'hub', :require=>nil
  gem 'rails_layout'
end
group :development, :test do
  gem 'pry-rails'
  gem 'pry-rescue'
end
group :production do
  gem 'thin'
end
