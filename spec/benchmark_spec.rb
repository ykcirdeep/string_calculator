require 'benchmark'

RSpec.describe "Performance" do
  it "processes 10k numbers quickly" do
    input = (1..10_000).to_a.join(',')
    time = Benchmark.realtime { StringCalculator.add(input) }
    puts "\n100K numbers: #{time.round(4)}s"
    expect(time).to be < 0.1  # Adjust threshold as needed
  end
end
