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

example "hello" do
<<END
10.times do
  puts "Hello World!"
end
END
end

example "variables" do
<<END
def display_string
  str = "Local address"
  puts str
end
END
end

example "arguments" do
<<END
def display_string(str)
  puts str
end
END
end

example "variables in blocks" do
<<END
def display_string
  str = "Hello World"
  10.times do
    puts str
  end
end
END
end
