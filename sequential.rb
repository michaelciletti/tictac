class SequentialConsole

attr_reader :marker

	def initialize(marker)
		@marker = marker
	end

	def get_move(board)
	 	# p board.class
	 	board.tttboard.each_with_index do |strings, index|  
	 			unless strings.include?("o") || strings.include?("x")  
	 			return index
	 			end
		end

	 end




end
# ||  strings == "o"
 #|| strings.include?("x")