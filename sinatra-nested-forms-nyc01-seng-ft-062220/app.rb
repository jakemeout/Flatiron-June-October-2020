require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    
    get '/' do
    
      erb :root
    end
    
    get '/new' do 

    erb :'pirates/new'
    end

    post '/pirates' do
    
      @pirate = Pirate.new(params[:pirate])
    params[:pirate][:ships].each {|x| Ship.new(x)}
      # binding.pry
      @ships = Ship.all
    erb :'pirates/show'
    end

    
  end
end
