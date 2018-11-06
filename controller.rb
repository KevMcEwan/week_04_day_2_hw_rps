require'sinatra'
require'sinatra/contrib/all' if development?
require_relative'./models/rps'
also_reload'./models/rps'





get '/play_game/:hand1/:hand2' do
  hand1 = params[:hand1]
  hand2 = params[:hand2]
  @result = RPSGame.check_win(hand1, hand2)
  erb(:result)
end

get '/' do
  erb(:welcome)
end

get '/play_game' do
  erb(:play_game)
end

# get '/play_game/:hand1/:hand2' do
#   array = ["rock", "paper", "scissors"]
#   user_input = gets.chomp
#   hand1 = params[:hand1]
#   hand2 = params[:hand2]
#   @result = RPSGame.check_win(hand1, array.sample)
#   erb(:result)
# end
