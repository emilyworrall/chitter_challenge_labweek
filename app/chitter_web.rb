require_relative 'data_mapper_setup'

class Chitter < Sinatra::Base

  get '/peeps' do
  @peeps = Peep.all
  erb :'peeps/index'
  end
end
