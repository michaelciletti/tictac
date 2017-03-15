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
end