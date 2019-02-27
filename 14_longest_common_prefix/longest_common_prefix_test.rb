require 'minitest/autorun'
require 'minitest/pride'
require './longest_common_prefix'

class LongestCommonPrefixTest < Minitest::Test

  def setup
    @longest_common_prefix = LongestCommonPrefix.new
  end

  def test_flower_examppled
    strings = ["flower","flow","flight"]

    assert_equal "fl", @longest_common_prefix.lcp(strings)
  end

  def test_lcp_returns_empty_string_if_no_common_prefix
    strings = ["dog","racecar","car"]

    assert_equal "", @longest_common_prefix.lcp(strings)
  end

  def test_empty_array
    strings = []

    assert_equal "", @longest_common_prefix.lcp(strings)
  end

  def test_c_array
    strings = ["c", "c"]

    assert_equal "c", @longest_common_prefix.lcp(strings)
  end

end
