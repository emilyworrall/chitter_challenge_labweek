require 'data_mapper'
require 'dm-validations'
require 'dm-timestamps'
require 'sinatra/base'
require 'sinatra/flash'

# require all models here  e.g require './app/models/etc'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/chitter_#{env}")
DataMapper.finalize
DataMapper.auto_upgrade!
