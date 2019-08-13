require 'minitest/autorun'
require 'minitest/pride'
require './length_of_longest_substring'

class LeetCodeTest < Minitest::Test

  def test_edge_cases
    assert_equal nil, LeetCode.length_of_longest_substring([])
    assert_equal 0, LeetCode.length_of_longest_substring("")
    assert_equal 1, LeetCode.length_of_longest_substring("rrrrrr")
  end

  def test_abcabcbb
    string = "abcabcbb"
    assert_equal 3, LeetCode.length_of_longest_substring(string)
  end

  def test_bbbbb
    string = "bbbbb"
    assert_equal 1, LeetCode.length_of_longest_substring(string)
  end

  def test_pwwkew
    string = "pwwkew"
    assert_equal 3, LeetCode.length_of_longest_substring(string)
  end

  def test_two_letter_string
    string = "au"
    assert_equal 2, LeetCode.length_of_longest_substring(string)
  end

end
