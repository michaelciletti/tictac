class Board
	
attr_accessor :tttboard
	
	def initialize()
		@tttboard = Array.new(9, "")
	end

	def update_board(position, marker)
		tttboard[position] = marker
	end

	def open_space?(position)
		tttboard[position] == ""
	end

	def full_board?()
		tttboard.count("") == 0
	end

	def board_win?(marker)
		tttboard[0] == marker && tttboard[1] == marker && tttboard[2] == marker 
	end

end