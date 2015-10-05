require_relative 'data_mapper_setup'

class Chitter < Sinatra::Base

  get '/peeps' do
    @peeps = Peep.all
    erb :'peeps/index'
  end

  get '/peeps/new' do
    erb :'peeps/new'
  end

  post '/peeps' do
    Peep.create(message: params[:message])
    redirect '/peeps'
  end

  get '/users/new' do
    erb :'/users/new'
  end

  post '/users' do
    User.create(email: params[:email],
                password: params[:password])
    redirect '/peeps'
  end

end
