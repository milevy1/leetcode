require 'minitest/autorun'
require 'minitest/pride'
require './lib/two_sum'

class TwoSumTests < Minitest::Test

  def setup
    @two_sum = TwoSum.new
  end

  def test_it_exists
    assert_instance_of TwoSum, @two_sum
  end

  def test_failing_on_leetcode
    nums = [2,7,11,15]
    target = 9

    assert_equal [0, 1], @two_sum.two_sum(nums, target)
  end

  def test_another_failing_test
    nums = [3, 2, 4]
    target = 6

    assert_equal [1, 2], @two_sum.two_sum(nums, target)
  end

  def test_duplicates
    nums = [3, 3]
    target = 6

    assert_equal [0, 1], @two_sum.two_sum(nums, target)    
  end

end
