require "minitest/autorun"
require_relative "sequential.rb"

class TestSequential < Minitest::Test
	
	# def test_first_space_availabe
	# 	player = SequentialConsole.new("x")
	# 	assert_equal("x",player.marker)
	# end

	def test_empty_board_fills_zero_position
		player = SequentialConsole.new("x")
		board = ["o", "o", "o", "o", "o", "x", "7", "8", "9"]
		assert_equal(6,player.get_move(board))
	end



	def test_empty_board_fills_first_position
		player = SequentialConsole.new("x")
		board = ["1", "x", "3", "4", "5", "6", "7", "8", "9"]
		assert_equal(0,player.get_move(board))
	end

end