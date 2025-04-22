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

    it "given '1\n2,3' & it returns 6" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it "given '//;\n1;2' & it returns 3" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end
  end
end
