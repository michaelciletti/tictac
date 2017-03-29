require "minitest/autorun"
require_relative "random.rb"
require_relative "board.rb"

class TestRandom < Minitest::Test

	def test_first_space_availabe_return_x
		player = RandomConsole.new("x")
		assert_equal("x",player.marker)
	end

	def test_one_open_space
		player = RandomConsole.new("x")
		board = Board.new
		board.tttboard = ["x", "o", "x", "4", "o", "x", "o", "x", "o"]
		# board = ["x", "o", "x", "4", "o", "x", "o", "x", "o"]
		assert_equal(3,player.get_move(board.tttboard))
	end

	def test_two_open_spaces
		player = RandomConsole.new("x")
		board = Board.new
		board.tttboard = ["x", "2", "x", "4", "o", "x", "o", "x", "o"]
		# board = ["x", "o", "x", "4", "o", "x", "o", "x", "o"]
		assert_equal(true,[1,3].include?(player.get_move(board.tttboard)))
	end

	def test_three_open_spaces
		player = RandomConsole.new("x")
		board = Board.new
		board.tttboard = ["x", "2", "x", "4", "o", "x", "o", "x", "9"]
		# board = ["x", "o", "x", "4", "o", "x", "o", "x", "o"]
		assert_equal(true,[1,3,8].include?(player.get_move(board.tttboard)))
	end

	# def test_empty_board
	# 	player = RandomConsole.new("x")
	# 	board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
	# 	assert_equal(true,[1, 2, 3, 4, 5, 6, 7, 8, 9].include?(player.get_move(board))
	# end


end