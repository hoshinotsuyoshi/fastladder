source 'https://rubygems.org'
gem 'rails'

# Include database gems for the adapters found in the database
# configuration file or DATABASE_URL
require 'erb'
require 'uri'
require 'yaml'

# database_file = File.join(File.dirname(__FILE__), "config/database.yml")
# adapters = []
# 
# if File.exist?(database_file)
#   database_config = YAML::load(ERB.new(IO.read(database_file)).result)
#   adapters += database_config.values.map {|conf| conf['adapter']}.compact.uniq
# end
#
# if database_url = ENV['DATABASE_URL']
#   adapters << URI.parse(database_url).scheme
# end
# 
# if adapters.any?
#   adapters.each do |adapter|
#     case adapter
#     when 'mysql2'     ; gem 'mysql2'
#     when 'mysql'      ; gem 'mysql'
#     when /postgres/   ; gem 'pg'
#     when /sqlite3/    ; gem 'sqlite3'
#     else
#       warn("Unknown database adapter `#{adapter}` found in config/database.yml, use Gemfile.local to load your own database gems")
#     end
#   end
# else
#   warn("No adapter found in config/database.yml or DATABASE_URL, please configure it first -- fallback to pg")
#   gem 'pg'
# end

# https://qiita.com/otsukishinsuke/items/f5ff336f63366c364909 0.5系は使えない
# https://gitlab.com/gitlab-org/gitlab-foss/-/issues/37100 0.3系は使えない
gem 'mysql2'

gem 'addressable', require: 'addressable/uri'
gem 'coffee-rails'
gem 'feed_searcher', '>= 0.0.6'
gem 'feedjira'
gem 'haml'
gem 'i18n-js'
gem 'jbuilder'
gem 'mini_magick'
gem 'nokogiri'
gem 'opml', git: 'https://github.com/hoshinotsuyoshi/opml', branch: :relax_activesupport_dependency
gem 'sassc-rails'
gem 'settingslogic'
gem 'uglifier'

if ENV['NEW_RELIC_LICENSE_KEY']
  gem 'newrelic_rpm'
end

group :development, :test do
  gem 'pry-byebug'
end

group :development do
  gem 'annotate'
  gem 'pry-rails'
  gem 'pry-doc'
end

group :test do
  gem 'capybara'
  gem 'coveralls', require: false
  gem 'factory_bot_rails'
  gem 'launchy'
  gem 'poltergeist'
  gem 'rails-controller-testing'
  gem 'rspec-activemodel-mocks'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'simplecov'
  gem 'simplecov-rcov'
  gem 'sinon-rails'
  gem 'puma'
  gem 'webmock'
end
