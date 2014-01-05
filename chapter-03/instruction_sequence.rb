require_relative '../lib/utils'

disasm_example "hello" do
<<END
10.times do
  puts "Hello World!"
end
END
end

disasm_example "variables" do
<<END
def display_string
  str = "Local address"
  puts str
end
END
end

disasm_example "arguments" do
<<END
def display_string(str)
  puts str
end
END
end

disasm_example "variables in blocks" do
<<END
def display_string
  str = "Hello World"
  10.times do
    puts str
  end
end
END
end
