require 'counter'

describe Counter do
  describe '#new' do
    it 'starts with a count of 0' do
      counter = Counter.new
      expect(counter.count).to eq 0
    end
  end

  describe '#increment' do
    it 'adds 1 to the count' do
      counter = Counter.new
      counter.increment
      expect(counter.count).to eq 1
    end
  end
end
