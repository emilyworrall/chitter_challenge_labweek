ENV['RACK_ENV'] = 'test'

require 'coveralls'
require 'simplecov'
require './app/chitter_web.rb'
# require './app/models/peep'

require 'capybara/rspec'

Capybara.app = Chitter

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!
