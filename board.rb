class Board
	
attr_accessor :tttboard
	
	def initialize()
		# @tttboard = Array.new(9, " ")
		@tttboard = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

	end

	def update_board(position, marker)
		tttboard[position - 1] = marker
	end

	def open_space?(position)
		# tttboard[position] == " "
		tttboard[position] == "1" || "2" || "3" || "4" || "5" || "6" || "7" || "8" || "9"
	end

	def full_board?()
		# tttboard.count(" ") == 0
		tttboard.count("1" && "2" && "3" && "4" && "5" && "6" && "7" && "8" && "9") == 0
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

	def board_tie?(marker)
		full_board?() == true  && board_win?(marker) == false
	end

end