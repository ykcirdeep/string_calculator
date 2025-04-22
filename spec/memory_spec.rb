require 'memory_profiler'

RSpec.describe "Memory Usage" do
  it "reports memory consumption" do
    input = (1..10_000).to_a.join(',')
    report = MemoryProfiler.report { StringCalculator.add(input) }
    report.pretty_print(to_file: 'memory_report.txt')
    puts "Memory report saved to memory_report.txt"
  end
end
