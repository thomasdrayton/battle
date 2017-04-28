require 'sinatra/base'
require_relative './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end


  get '/attacked' do
    @game.attack(@game.next_turn)
    @game.switch_turns
    erb(:attack)
  end

  get '/gameover' do
    erb(:gameover)
  end

  run! if app_file == $0
end
