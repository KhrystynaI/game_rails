require 'test_helper'

class BoardTest < ActiveSupport::TestCase
   test "board_has_not_empty_array" do
     board = Board.new
     assert_not_empty @board, "should not be empty"
   end

   test "board_has_5_digit" do
     board = Board.new
     assert_includes (@board, 5),"should have '5' inside"
   end

   test "board_has_5_digit" do
     board = Board.new
     assert_respond_to :raffle,"should have method 'raffle'"
   end


end
