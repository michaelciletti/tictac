require 'sinatra'
require_relative 'board.rb'
require_relative 'human_console_for_app.rb'
require_relative 'console.rb'

enable :sessions

get'/' do 
	erb :welcome
end

post '/player_1' do
	p1_name = params[:p1_name]
	p1_type = params[:p1_type]
	case p1_type
	when "Human" 
		p = HumanConsole.new("x")
	when "Sequential"
		p = SequentialConsole.new("x")
	when "Random"
		p = RandomConsole.new("x")
	end
	session[:p1] = p
	redirect '/player_2?p1_name='+p1_name
end
 
get'/player_2' do
	p1_name = params[:p1_name]
	erb :p2_name,locals: {p1_name: p1_name}
end

post '/player_2' do
	p2_type = params[:p2_type]
	case p2_type
	when "Human" 
		p = HumanConsole.new("o")
	when "Sequential"
		p = SequentialConsole.new("o")
	when "Random"
		p = RandomConsole.new("o")
	end
	session[:p2] = p
	session[:p1_name] = params[:p1_name]
	session[:p2_name] = params[:p2_name]
	session[:board] = Board.new
	session[:game] = Console.new(session[:p1], session[:p2])
	redirect '/gameplayboard'
end

get'/gameplayboard' do
	winplayer = session[:game].current_player.marker == "x" ? "o" : "x"
	if session[:board].board_win?(winplayer) 
		session[:finish] = "The winner is #{winplayer}"
		redirect '/gameover'
	elsif session[:board].board_tie?()
		session[:finish] = "Tie"
		redirect '/gameover'
	end
	if session[:game].current_player.class != HumanConsole
		redirect '/cpumove'
	end
 	erb :gameplayboard,locals: {board: session[:board].tttboard}
end

get '/cpumove' do 
	if session[:game].current_player.class == SequentialConsole
		move = session[:game].current_player.get_move(session[:board])
		session[:board].update_board(move, session[:game].current_player.marker)
		session[:game].change_player

		redirect '/gameplayboard'
	end
	if session[:game].current_player.class == RandomConsole
		move = session[:game].current_player.get_move(session[:board])
		session[:board].update_board(move, session[:game].current_player.marker)
		session[:game].change_player

		redirect '/gameplayboard'
	end
	end

post '/move' do

	if session[:game].current_player.class == HumanConsole
	move = params[:square].to_i-1
	if session[:board].open_space?(move) == true
	session[:board].update_board(move, session[:game].current_player.marker)
	session[:game].change_player

	redirect '/gameplayboard'
	else board.open_space?(board) == false
		redirect '/badspace'
	end
	end
	
end

get '/gameover' do
	erb :gameover
end
