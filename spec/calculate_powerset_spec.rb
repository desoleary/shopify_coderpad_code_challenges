# frozen_string_literal: true

# Calculate the PowerSet of a given set S, which is the set of all subsets of S,
# including the empty set and S itself.
# a. Example input: {1, 3}
# b. Expected output: {{1, 3}, {1}, {3}, {}}

def calculate_powerset(elements)
  (0..elements.length).to_a.reverse.reduce([]) do |memo, size|
    memo.concat(elements.combination(size).to_a)
  end
end

RSpec.describe '#calculateAngleBetweenClockHandles' do
  describe 'Calculates difference between two handles of a clock' do
    it 'should take the minimum angle difference' do
      expect(calculate_powerset([1, 3])).to eq([[1, 3], [1], [3], []])
      expect(calculate_powerset([1, 3, 5])).to eq([[1, 3, 5], [1, 3], [1, 5], [3, 5], [1], [3], [5], []])
    end
  end
end
