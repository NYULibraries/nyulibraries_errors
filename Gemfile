source 'https://rubygems.org'

gemspec

group :development, :test do
  # Allows for testing against multiple rails versions
  rails_version = ENV["RAILS_VERSION"] || "default"

  rails =
    case rails_version
    when "master"
      { github: "rails/rails" }
    when "default"
      ">= 4"
    else
      "~> #{rails_version}"
    end
  gem "rails", rails

  gem 'rake', '~> 11.1'
  gem 'pry', '~> 0.10'
  gem 'rspec-rails', '~> 3.4'
  gem 'coveralls', '~> 0.8'
  gem 'rails-controller-testing'

  platforms :jruby do
    gem 'therubyrhino'
    gem 'activerecord-jdbcsqlite3-adapter'
  end

  platforms :ruby do
    gem 'therubyracer'
    gem 'sqlite3'
  end
end
