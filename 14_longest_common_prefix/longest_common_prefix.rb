class LongestCommonPrefix

  def lcp(strs)
    return "" if strs.class != Array || strs.length == 0
    return strs[0] if strs.length == 1

    first_letter_of_first_string = strs[0][0]
    if !strs.all? { |string| string[0] == first_letter_of_first_string }
      return ""
    end

    counter = 0
    common_prefix = first_letter_of_first_string

    while strs.all? { |string| string[0..counter] == common_prefix }
      counter += 1
      common_prefix = strs[0][0..counter]
      return common_prefix if counter > common_prefix.length
    end

    common_prefix[0..(counter - 1)]
  end

end
