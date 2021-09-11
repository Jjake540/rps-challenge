require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # get '/' do
  #   'Testing infrastructure working!'
  # end

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    erb :play
  end

  run! if app_file == $0
end