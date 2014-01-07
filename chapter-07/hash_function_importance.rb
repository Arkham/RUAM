require 'benchmark'

class KeyObject
  def hash
    # this makes the hashing function horrible, therefore performance goes down horribly
    4
  end

  def eql?(other)
    super
  end
end

21.times do |exponent|
  target_key = nil

  size = 2**exponent
  hash = (1..size).each_with_object({}) do |n, hash|
    index = KeyObject.new
    target_key = index if n > size/2 && target_key.nil?
    hash[index] = rand
  end

  GC.disable

  Benchmark.bm do |bench|
    bench.report "retrieving an element from a hash with #{size} elements 10000 times" do
      10000.times do
        val = hash[target_key]
      end
    end
  end

  GC.enable
end
