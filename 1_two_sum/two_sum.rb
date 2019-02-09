class TwoSum

  def two_sum(nums, target)

    hash = {}
    nums.each_with_index do |number, index|
      if hash.has_key?(target - number)
        return [hash[target - number], index]
      end

      hash[number] = index
    end

  end

end
