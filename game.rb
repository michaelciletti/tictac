require_relative "console.rb"

	
 	game = Console.new(HumanConsole.new("x"), HumanConsole.new("o"))

 		game.display_board
	 # 	move = game.get_move
		# game.make_move(move)
		# game.display_board
 		

 	until game.game_over?
 		game.change_player
 		move = game.get_move
 		game.make_move(move)
 		game.display_board
 	end
 		game.current_player
 		puts "The winner is #{marker}"
		
	