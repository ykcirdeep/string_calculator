module StringCalculator
  def self.add(numbers)
    delimiter, nums = parse_delimiter(numbers)
    numbers = nums.split(/#{delimiter}/)

    numbers.sum do |num|
      n = num.to_i
      raise "negative numbers not allowed: #{n}" if n < 0
      n <= 1000 ? n : 0
    end
  end

  private

  def self.parse_delimiter(input)
    if input.start_with?('//')
      delimiter, nums = input.split("\n", 2)
      delimiter = delimiter.start_with?('//[') ? Regexp.escape(delimiter[3...-1]) : Regexp.escape(delimiter[2..])
      [delimiter, nums]
    else
      [/[\s,]+/, input]
    end
  end
end
