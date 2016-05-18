source 'https://rubygems.org'

gemspec

group :development, :test do
  gem 'rails'
  gem 'rake'
  gem 'pry'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'factory_girl_rails'

  platforms :jruby do
    gem 'therubyrhino'
    gem 'activerecord-jdbcsqlite3-adapter'
  end

  platforms :ruby do
    gem 'therubyracer'
    gem 'sqlite3'
  end

end
