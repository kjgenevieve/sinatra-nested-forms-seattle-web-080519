require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :'root'
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = params["pirate"]

      # params[:pirate].each do |pirateInfo|
      #   Pirate.new(pirateInfo)
      # end
      # @pirates = Pirate.all
      

      # params [:pirate][:ships].each do |shipInfo|
      #   Ship.new(shipInfo)
      # end
      # @ships = Ship.all

      erb :'pirates/show'
    end

  end
end
