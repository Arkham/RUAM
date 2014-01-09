require 'benchmark'

iterations = ARGV[0].to_i

Benchmark.bm do |bench|
  array = (1..100).to_a

  bench.report "#{iterations} iterations" do
    iterations.times do
      sample = array.sample
    end
  end
end
