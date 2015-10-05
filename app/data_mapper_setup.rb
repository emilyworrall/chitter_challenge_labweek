require 'data_mapper'
require 'dm-validations'
require 'dm-timestamps'
require 'sinatra/base'
require 'sinatra/flash'
env = ENV['RACK_ENV'] || 'development'

# require all models here  e.g require './app/models/etc'
require './app/models/peep'


DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/chitterlab_#{env}")
DataMapper.finalize
DataMapper.auto_upgrade!
