source 'https://rubygems.org'

gemspec

group :development, :test do
  gem 'rails', '~> 4.2'
  gem 'rake', '~> 11.1'
  gem 'pry', '~> 0.10'
  gem 'rspec-rails', '~> 3.4'
  gem 'coveralls', '~> 0.8'

  platforms :jruby do
    gem 'therubyrhino'
    gem 'activerecord-jdbcsqlite3-adapter'
  end

  platforms :ruby do
    gem 'therubyracer'
    gem 'sqlite3'
  end

end
