class ListNode
  attr_accessor :val, :next

  def initialize(val)
      @val = val
      @next = nil
  end
end

class AddTwoNumbers
  def add_two_numbers(l1, l2, carry = 0)
    sum_of_vals = sum_of_vals(l1, l2, carry)

    if sum_of_vals >= 10
      first_digit = sum_of_vals.divmod(10)[1]
      result = ListNode.new(first_digit)
      next_carry = 1
    else
      result = ListNode.new(sum_of_vals)
      next_carry = 0
    end

    if l1 && l1.next && l2 && l2.next
      result.next = add_two_numbers(l1.next, l2.next, next_carry)
    elsif l1 && l1.next
      result.next = add_two_numbers(l1.next, nil, next_carry)
    elsif l2 && l2.next
      result.next = add_two_numbers(l2.next, nil, next_carry)
    elsif sum_of_vals >= 10
      result.next = ListNode.new(1)
    end

    return result
  end

  def sum_of_vals(l1, l2, carry)
    if l1 && l2
      sum_of_vals = l1.val + l2.val + carry
    elsif l1
      sum_of_vals = l1.val + carry
    elsif l2
      sum_of_vals = l2.val + carry
    else
      sum_of_vals = carry
    end
  end
end

# 2. Add Two Numbers
# Medium
# You are given two non-empty linked lists representing two non-negative integers.
# The digits are stored in reverse order and each of their nodes contain a single digit.
# Add the two numbers and return it as a linked list.
#
# You may assume the two numbers do not contain any leading zero, except the number 0 itself.
#
# Example:
#
# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8
# Explanation: 342 + 465 = 807.
