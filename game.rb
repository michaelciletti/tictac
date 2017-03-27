require_relative "console.rb"

	
 	game = Console.new(HumanConsole.new("x"), HumanConsole.new("o"))

 		game.display_board

 	until game.game_over?
 	 	# game.change_player
 		move = game.get_move
 		game.make_move(move)
 		game.display_board
 		if game.game_over?
 			break
 		end
 		game.change_player
 	end
 		game.finish

 	# 	if game.board_win? == false #added
 	# 		puts "No Winner"  #added
 	# 	game.current_player  #original
 		# puts "The winner is #{game.current_player.marker}"    #original
 	# end  #added
		
	