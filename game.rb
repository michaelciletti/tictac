require_relative "console.rb"

	
 	# game = Console.new(HumanConsole.new("x"), HumanConsole.new("o"))
	# game = Console.new(HumanConsole.new("x"), SequentialConsole.new("o"))
	# game = Console.new(SequentialConsole.new("x"), SequentialConsole.new("o"))
	# game = Console.new(HumanConsole.new("x"), RandomConsole.new("o"))
 	# game = Console.new(RandomConsole.new("x"), HumanConsole.new("o"))	
 	# game = Console.new(RandomConsole.new("x"), RandomConsole.new("o"))
	game = Console.new(HumanConsoleForApp.new("x"), HumanConsoleForApp.new("o"))
 		game.display_board

 	until game.game_over?
 		move = game.get_move
 		game.make_move(move)
 		game.display_board
 		if game.game_over?
 			break
 		end
 		game.change_player
 	end
 		game.finish

 	
		
	