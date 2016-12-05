require 'spec_helper'
require 'number_processor'

describe NumberProcessor do
  it 'adder adds 2 numbers' do
    np = NumberProcessor.new

    expect(np.adder(1, 2)).to eq 3
  end

  it 'adder can add unlimited number of arguments' do
    np = NumberProcessor.new

    expect(np.adder(1, 2, 1, 1, 1)).to eq 6
  end

  it 'multiplier multiplies 2 numbers' do
    expect(NumberProcessor.multiplier(1, 2)).to eq 2
  end

  it 'multiplier multiplies ullimitd number of arguments' do
    expect(NumberProcessor.multiplier(1, 2, 1, 1, 1)).to eq 2
  end
end
