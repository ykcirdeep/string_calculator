module StringCalculator
  def self.add(numbers)
    numbers = numbers.split(/[\s,]+/)
    numbers = numbers.map!(&:to_i)
    numbers.sum
  end
end
