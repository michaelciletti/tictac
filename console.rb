require_relative "board.rb"
require_relative "human_console.rb"

class Console
	
	attr_accessor :board, :player1, :player2, :current_player
	
	def initialize(player1, player2)
		@board = Board.new
		@player1 = player1
		@player2 = player2
		@current_player = player1
	end

	def display_board
		puts "Let's Play Some Tic-Tac-Toe!!!"
		puts " 	 #{board.tttboard[0]} | #{board.tttboard[1]} | #{board.tttboard[2]} "
		puts "	---+---+---"
		puts " 	 #{board.tttboard[3]} | #{board.tttboard[4]} | #{board.tttboard[5]} "
		puts "	---+------"
		puts " 	 #{board.tttboard[6]} | #{board.tttboard[7]} | #{board.tttboard[8]} "
	end

	def get_move
		current_player.get_move(board)
	end

	def make_move(move)
		board.update_board(move, current_player.marker)
	end


	def change_player()
		if current_player == player1
			@current_player = player2
		else 
			@current_player = player1 
		end
	end

	def game_over?()
		board.board_win?(current_player.marker) || board.board_tie?()
	end

	def finish()
		if board.board_win?(current_player.marker) 
			puts "Winner is #{current_player.marker}"
		else 
			puts "No Winner--Tie"
		end
			
	end

end

#{board.current_player.marker}