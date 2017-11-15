require 'test_helper'

class NumberTest < ActiveSupport::TestCase
   test "number is present" do
     number = Number.new
     assert_not numer.save "without num_variable"
   end

   test "number must have board variable" do
     number = Number.new
     assert_includes @board, "number must have board variable"
   end
end
