require_relative '../lib/utils'

disasm_example "if .. else .. end" do
<<END
i = 3
if i < 10
  puts "small"
else
  puts "large"
end
puts "done"
END
end

disasm_example "while .. break" do
<<END
i = 0
while i < 10
  puts i
  i += 1
  break
end
END
end

disasm_example "while .. break" do
<<END
i = 0
10.times do |n|
  puts n
  break
end
puts "continue from here"
END
end

disasm_example "for loop" do
<<END
for i in 1..5
  puts i
end
END
end

disasm_example "each loop" do
<<END
(1..5).each do |i|
  puts i
end
END
end
