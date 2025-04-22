require 'string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns the number itself when only one number is provided' do
      expect(StringCalculator.add("5")).to eq(5)
    end

    it 'returns the sum when two number is provided' do
      expect(StringCalculator.add("5, 9")).to eq(14)
    end
  end
end
