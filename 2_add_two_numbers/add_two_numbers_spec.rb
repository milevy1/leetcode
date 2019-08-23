require_relative './add_two_numbers'

describe 'Add Two Numbers' do
  subject { AddTwoNumbers.new }

  it 'Example 1' do
    # Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
    # Output: 7 -> 0 -> 8
    # Explanation: 342 + 465 = 807.
    list_1 = ListNode.new(2)
    list_1.next = ListNode.new(4)
    list_1.next.next = ListNode.new(3)

    list_2 = ListNode.new(5)
    list_2.next = ListNode.new(6)
    list_2.next.next = ListNode.new(4)

    expected = subject.add_two_numbers(list_1, list_2)

    expect(expected.val).to eq(7)
    expect(expected.next.val).to eq(0)
    expect(expected.next.next.val).to eq(8)
  end

  it 'Example 2' do
    list_1 = ListNode.new(5)
    list_2 = ListNode.new(5)

    expected = subject.add_two_numbers(list_1, list_2)

    expect(expected.val).to eq(0)
    expect(expected.next.val).to eq(1)
  end

  it 'Example 3' do
    list_1 = ListNode.new(1)
    list_2 = ListNode.new(9)
    list_2.next = ListNode.new(9)

    expected = subject.add_two_numbers(list_1, list_2)

    expect(expected.val).to eq(0)
    expect(expected.next.val).to eq(0)
    expect(expected.next.next.val).to eq(1)
  end

  it 'Example 4' do
    list_1 = ListNode.new(1)
    list_1.next = ListNode.new(8)
    list_2 = ListNode.new(0)

    expected = subject.add_two_numbers(list_1, list_2)

    expect(expected.val).to eq(1)
    expect(expected.next.val).to eq(8)
  end
end
