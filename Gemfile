source "https://rubygems.org"

gem "rails", "~> 7.2.1"

gem "bcrypt", "~> 3.1.7"
gem "bootsnap", require: false
gem "cssbundling-rails"
gem "jbuilder"
gem "jsbundling-rails"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ windows jruby ]

group :development, :test do
  gem "brakeman", require: false
  gem "capybara"
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "factory_bot_rails"
  gem "launchy"
  gem "pry"
  gem "rspec-rails", "~> 7.0.0"
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
end

gem "dockerfile-rails", ">= 1.6", group: :development
