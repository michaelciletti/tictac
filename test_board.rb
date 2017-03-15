require "minitest/autorun"
require_relative "board.rb"

class TestBoard < Minitest::Test
	def test_new_board
	board = Board.new 
	assert_equal(Array.new(9, ""),board.tttboard)
	end

	def test_update_with_x_at_position_1
	board = Board.new 
	board.update_board(0,"x")
	assert_equal(Array.new(["x", "", "", "", "", "", "", "", ""],board.ttboard))
	end


end