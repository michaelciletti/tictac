class SequentialConsole

attr_reader :marker

	def initialize(marker)
		@marker = marker
	end

	def get_move(board)
	 	puts"Pick a Space"
	 	move = gets.chomp.to_i - 1