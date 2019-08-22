class Operator
  # Operator.divide(10, 3)
  # => 10 / 3
  # dividend = 10
  # divisor = 3
  def self.divide(dividend, divisor)
    return 1 if dividend == divisor
    return -1 if dividend.abs == divisor || dividend == divisor.abs
    return 0 if dividend < divisor && dividend.positive? && divisor.dividend

    # i = 0
    # d_counter = divisor
    # c = 0

    # Compare divisor to first character of dividend
    # => if divisor > dividend[0..i]
    #     ... i+= 1

    # => else divisor <= dividend[0..i]
    #       until d_counter > dividend[0..i]
    #              d_counter += divisor
    #              c+= 1
    #       end
    #       d_counter -= divisor
    #
    #
    #
  end
end
