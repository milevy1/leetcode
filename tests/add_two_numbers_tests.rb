require 'minitest/autorun'
require 'minitest/pride'
require './lib/add_two_numbers'

class AddTwoNumbersTest < Minitest::Test

  def setup
    @addtwo = AddTwoNumbers.new
  end

  def test_it_exists
    assert_instance_of AddTwoNumbers, @addtwo
  end

  def test_first_exampled
    list1 = [2, 4, 3]
    list2 = [5, 6, 4]
    expected = [7, 0, 8]
    # Explanation: 342 + 465 = 807.
    # Reverse order sum

    assert_equal expected, @addtwo.add_two_numbers(list1, list2)
  end

end
