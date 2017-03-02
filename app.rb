require 'sinatra/base'

class BattleApp < Sinatra::Base
  enable :sessions

  get '/' do
    "Welcome to Battle"
    erb(:index)
  end

  post '/names' do
    p params
    session[:player_1_name] = params[:player_1]
    session[:player_2_name] = params[:player_2]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1_name]
    @player_2 = session[:player_2_name]
    erb(:play)
  end

  get '/attack' do
    @player_1 = session[:player_1_name]
    @player_2 = session[:player_2_name]
    erb(:attack)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
