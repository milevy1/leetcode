class LeetCode

  # Given a string, find the length of the longest
  # substring without repeating characters.

  def self.length_of_longest_substring(s)
    # Edge cases:
    # 1 - Not a string input
    return nil if s.class != String
    # 2 - Empty string ""
    return 0 if s == ""
    # 3 - All one character
    characters = s.chars
    return 1 if characters.all? { |character| s[0] == character }
    # 4 - No repeating characters
    return s.length if characters.length == characters.uniq.length

    max_length = 0
    characters.each_with_index do |character, index|
      # Find all indexes of character
      indexes = characters.each_index.select{|i| characters[i] == character}
      # Fine next index
      next_index = indexes.find { |char_index| char_index > index }
      # Find difference between indexes of character
      length_between_indexes = next_index - index
      # If max_difference > max_length, set max_length = max_difference
      max_length = length_between_indexes if length_between_indexes > max_length
    end
    max_length
  end

end
