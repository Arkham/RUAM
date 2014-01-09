def display_count
  data = ObjectSpace.count_objects
  puts "Total: #{data[:TOTAL]} Free: #{data[:FREE]} Object: #{data[:T_OBJECT]}"
end

300.times do
  Object.new
  display_count
end

GC.start

display_count

