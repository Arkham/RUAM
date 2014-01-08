require 'benchmark'

def c_while_loop(array)
  i, result, length = 0, 0, array.length

  while i < length
    result += i
    i += 1
  end

  result
end

def ruby_loop(array)
  array.inject(:+)
end

Benchmark.bm do |bench|
  array = (1..10_000_000).to_a
  bench.report "c while style loop" do
    puts c_while_loop(array)
  end

  bench.report "ruby style loop" do
    puts ruby_loop(array)
  end
end
