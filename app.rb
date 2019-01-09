require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end
  get '/create_puppy' do
    erb :create_puppy
  end
  post '/puppy' do
    @age = params["age"]
    @breed = params["breed"]
    @name = params["name"]
    erb :display_puppy
  end

end
