require_relative '../lib/utils'

disasm_example "sum" do
<<END
puts 2 + 2
END
end

disasm_example "block" do
<<END
10.times do |n|
  puts n
end
END
end

disasm_example "method" do
<<END
def add_two(a, b)
  sum = a + b
end
END
end

disasm_example "complex method" do
<<END
def complex_formula(a, b, *args, c)
  a + b + args.size + c
end
END
end

disasm_example "complex define_method" do
<<END
define_method :complex_formula do |a, b, *args, c|
  a + b + args.size + c
end
END
end

disasm_example "method with default argument" do
<<END
def add_two_optional(a, b = 5)
  sum = a + b
end
END
end

disasm_example "method with keywork argument" do
<<END
def add_two_optional(a, b: 5)
  sum = a + b
end
END
end

