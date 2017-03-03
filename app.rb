require 'sinatra/base'
require './lib/player'

class BattleApp < Sinatra::Base
  enable :sessions

  get '/' do
    "Welcome to Battle"
    erb(:index)
  end

  post '/names' do
    p params
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @player_1_HP = $player_1.health_points
    @player_2_HP = $player_2.health_points
    erb(:play)
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    $player_2.take_damage
    erb(:attack)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
