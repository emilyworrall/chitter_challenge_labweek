ENV['RACK_ENV'] = 'test'

require 'coveralls'
require 'simplecov'
require './app/models/peep'

require 'capybara/rspec'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!
