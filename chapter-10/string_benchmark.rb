require 'benchmark'

ITERATIONS = 1_000_000

Benchmark.bm do |bench|
  bench.report "copy on write" do
    ITERATIONS.times do
      str = "This string is not shared" + " and so can be modified faster."
      str2 = "But this string is shared" + " so Ruby will need to copy it before writing to it."
      str3 = str2.dup
      # str[3] = 'x'    # this directly edits the string
      str3[3] = 'x'   # this triggers copy of the shared string
    end
  end
end
