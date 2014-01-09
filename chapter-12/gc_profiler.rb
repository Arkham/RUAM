GC::Profiler.enable

result = []

10_000_000.times do
  # Object.new
  result << Object.new
end

GC::Profiler.report
