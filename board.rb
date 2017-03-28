class Board
	
attr_accessor :tttboard
	
	def initialize()
		@tttboard = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

	end

	def update_board(position, marker)
		tttboard[position] = marker  
	end

	def open_space?(position)
		tttboard[position] != "x" && tttboard[position] != "o"
	end

	def full_board?()
		# tttboard.count("1" && "2" && "3" && "4" && "5" && "6" && "7" && "8" && "9") == 0  #this caused a problem with 9, always resultedin a tie unless winning move
		return tttboard[0] != "1" && tttboard[1] != "2" && tttboard[2] != "3" && tttboard[3] != "4" && tttboard[4] != "5" && tttboard[5] != "6" && tttboard[6] != "7" && tttboard[7] != "8" && tttboard[8] != "9" 
	end

	def board_win?(marker)
		tttboard[0] == marker && tttboard[1] == marker && tttboard[2] == marker ||
		tttboard[3] == marker && tttboard[4] == marker && tttboard[5] == marker ||
	    tttboard[6] == marker && tttboard[7] == marker && tttboard[8] == marker ||
		tttboard[0] == marker && tttboard[3] == marker && tttboard[6] == marker ||
		tttboard[1] == marker && tttboard[4] == marker && tttboard[7] == marker ||
		tttboard[2] == marker && tttboard[5] == marker && tttboard[8] == marker ||
		tttboard[2] == marker && tttboard[4] == marker && tttboard[6] == marker ||
		tttboard[0] == marker && tttboard[4] == marker && tttboard[8] == marker		
	end

		def board_tie?()
		full_board?() == true && board_win?("x") == false && board_win?("o") == false
	end

end