class HumanConsole

attr_reader :marker

	def initialize(marker)
		@marker = marker
	end

	def get_move(board)
	 	puts"Pick a Space"
	 	move = gets.chomp.to_i - 1

	 	while move < 0 || move > 8 
	 		puts "Pick from 1 to 9"
	 		move = gets.chomp.to_i - 1
	 	end

	 	while !board.open_space?(move)
	 		puts "Pick an Open Space"
	 		move = gets.chomp.to_i - 1
	 	end

	 	return move
	 end

end
