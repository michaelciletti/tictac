class HumanConsole

attr_reader :marker

	def initialize(marker)
		@marker = marker
	end

	def get_move(board)
		puts"Pick a Space"
		move = gets.chomp.to_i - 1
		# if board[move] == " "
		if board[move] == "1" || board[move] == "2" || board[move] == "3" || board[move] == "4" || board[move] == "5" || board[move] == "6" || board[move] == "7" || board[move] == "8" || board[move] == "9"
			move
 		else
 		puts "Invalid Space"
		get_move(board)
		end
	end

end
