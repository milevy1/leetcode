def convert(s, num_rows)
  return s if num_rows == 1
  result = []

  num_rows.times do
    result << Array.new
  end

  r = 0 # row counter
  c = 0 # column counter
  char_count = 0

  until result.flatten.compact.length == s.length do
    # Straight columns of chars
    until r == num_rows
      result[r][c] = s[char_count]
      r += 1
      char_count += 1
    end

    num_zigs = num_rows - 2
    zig_count = 0
    r -= 2
    c += 1

    # Zig column of chars
    until zig_count == num_zigs do
      result[r][c] = s[char_count]
      zig_count += 1
      r -= 1
      char_count += 1
    end

    c += 1
  end

  result.flatten.compact.join
end



puts "Example 3:"
puts "Expected Output: A"
puts "Actual output: #{convert("A", 1)}"

# P   A   H   N
# A P L S I I G
# Y   I   R
puts "Example 1:"
puts "Expected output: PAHNAPLSIIGYIR"
puts "Actual output: #{convert("PAYPALISHIRING", 3)}"

# P     I    N
# A   L S  I G
# Y A   H R
# P     I
puts "Example 2:"
puts "Expected Output: PINALSIGYAHRPI"
puts "Actual output: #{convert("PAYPALISHIRING", 4)}"
