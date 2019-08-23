require './divide_two_ints'

describe "Divide Two ints" do
  it 'errors if divide by zero' do
    expect{ Operator.divide(10, 0) }.to raise_error(ArgumentError)
  end

  it 'returns the correct poitive/negativey' do
    expect(Operator.divide(1, 1)).to be > 0
    expect(Operator.divide(-1, 1)).to be < 0
  end

  it 'Example 1, two positive' do
    expect(Operator.divide(10, 3)).to eq(3)
  end

  it 'Example 2, one positive, one neg' do
    expect(Operator.divide(7, -3)).to eq(-2)
  end
end
