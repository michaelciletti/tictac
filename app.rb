require 'sinatra'
require_relative 'board.rb'
require_relative 'human_console_for_app.rb'
require_relative 'game.rb'

enable :sessions

get'/' do 
	erb :welcome
end

post '/player_1' do
	p1_name = params[:p1_name]
	redirect '/player_2?p1_name='+p1_name
end
 
get'/player_2' do
	p1_name = params[:p1_name]
	erb :p2_name,locals: {p1_name: p1_name}
end

post '/player_2' do
	session[:p1_name] = params[:p1_name]
	session[:p2_name] = params[:p2_name]
	session[:board] = Board.new
	redirect '/gameplayboard'
end

get'/gameplayboard' do
 	erb :gameplayboard,locals: {board: session[:board].tttboard}
end

post '/move' do
	move = params[:square].to_i-1
	if board.openspace(board) == true
	session[:board].update_board(move, current_player.marker)
	redirect '/gameplayboard'
	else board.openspace(board) == false
		redirect '/badspace'
	end
end
