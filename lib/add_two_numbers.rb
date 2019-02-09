class AddTwoNumbers

  def add_two_numbers(l1, l2)

    l1_num = (l1[2].to_s + l1[1].to_s + l1[0].to_s).to_i
    l2_num = (l2[2].to_s + l2[1].to_s + l2[0].to_s).to_i

    sum = l1_num + l2_num
    sum_string = sum.to_s

    return [sum_string[2].to_i, sum_string[1].to_i, sum_string[0].to_i]

  end

end
