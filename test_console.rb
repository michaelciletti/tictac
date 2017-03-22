require "minitest/autorun"
require_relative "console.rb"
require_relative "board.rb"

class TestConsole < Minitest::Test
	def test_
		board = Board.new 
		assert_equal(Array.new(9, ""), board.tttboard)
	end

	def test_player_change
		board = Board.new 
		game = Console.new("x", "o")
		current_player = "o"
		assert_equal("x", game.change_player(current_player))
	end

	def test_player_change_2
		board = Board.new 
		game = Console.new("x", "o")
		current_player = "x"
		assert_equal("o", game.change_player(current_player))
	end

end