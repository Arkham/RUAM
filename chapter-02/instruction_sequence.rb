def header(title)
  puts "\n= #{title} ".ljust(80, "=")
end

def disasm(code)
  puts code
  puts
  puts RubyVM::InstructionSequence.compile(code).disasm
end

def example(title)
  header(title)
  disasm(yield)
end

example "sum" do
<<END
puts 2 + 2
END
end

example "block" do
<<END
10.times do |n|
  puts n
end
END
end

example "method" do
<<END
def add_two(a, b)
  sum = a + b
end
END
end

example "complex method" do
<<END
def complex_formula(a, b, *args, c)
  a + b + args.size + c
end
END
end

example "complex define_method" do
<<END
define_method :complex_formula do |a, b, *args, c|
  a + b + args.size + c
end
END
end

example "method with default argument" do
<<END
def add_two_optional(a, b = 5)
  sum = a + b
end
END
end

example "method with keywork argument" do
<<END
def add_two_optional(a, b: 5)
  sum = a + b
end
END
end

