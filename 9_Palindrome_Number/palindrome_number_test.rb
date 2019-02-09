require 'minitest/autorun'
require 'minitest/pride'
require_relative './palindrome_number'

class PalindromeNumberTest < Minitest::Test

  def test_case_1
    assert_equal true, PalindromeNumber.is_palindrome(121)
  end

  def test_case_2
    assert_equal false, PalindromeNumber.is_palindrome(-121)
  end

  def test_case_3
    assert_equal false, PalindromeNumber.is_palindrome(10)
  end

end
