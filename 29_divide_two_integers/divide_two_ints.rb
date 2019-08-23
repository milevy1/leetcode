class Operator
  # Operator.divide(10, 3)
  # => 10 / 3
  # dividend = 10
  # divisor = 3
  def self.divide(dividend, divisor)
    raise ArgumentError, 'Divisor cannot be zero.' if divisor == 0
    if divisor == -1 && dividend.positive?
      return "-#{dividend}".to_i
    elsif divisor == -1 && dividend.negative?
      return dividend.to_s[1..-1].to_i - 1
    elsif divisor == 1
      return dividend
    end

    counter = 0
    divisor_n = divisor.abs

    until divisor_n > dividend.abs
      divisor_n += divisor.abs
      counter += 1
    end

    if dividend.positive? && divisor.negative? || dividend.negative? && divisor.positive?
      "-#{counter}".to_i
    else
      counter
    end
  end

  # -2147483648
# -1

  # return 0 if dividend == 0
  # return 1 if dividend == divisor
  # return -1 if dividend.abs == divisor || dividend == divisor.abs
  # return 0 if dividend < divisor && dividend.positive? && divisor.dividend
  #   i = 0
  #   c = 0
  #   d_counter = divisor
  #
  #   # Compare divisor to first character of dividend
  #   until divisor <= Operator.dividend_string(dividend, i)
  #     i+= 1
  #   end
  #
  #
  #
  #   until d_counter > Operator.dividend_string(dividend, i)
  #     d_counter += divisor
  #     c+= 1
  #   end
  #
  #   return c
  #
  #   # d_counter -= divisor
  # end
  #
  # def self.dividend_string(dividend, i)
  #   dividend.to_s[0..i].to_i
  # end
end
