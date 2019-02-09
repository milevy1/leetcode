# Determine whether an integer is a palindrome.
# An integer is a palindrome when it reads the same backward as forward.

class PalindromeNumber

  def self.is_palindrome(x)
    x_string = x.to_s
    x_reversed = x_string.reverse

    return true if x_string == x_reversed
    return false
  end

end
