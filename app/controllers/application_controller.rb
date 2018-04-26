require './config/environment'
require './app/models/breakfast_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end
  
  post '/' do
    #save the data from my params hash as a string variable
    @breakfast_item = params[:breakfast]
    #call the shout method to upcase that string variable
    @shouted_breakfast_item = shout(@breakfast_item)
    #load the results.erb page
    erb :results
  end
  
  
  
end
