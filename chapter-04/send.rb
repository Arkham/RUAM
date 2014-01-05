require_relative '../lib/utils'

disasm_example "simple method" do
<<END
def simple_message
  puts "Hello World"
end
simple_message
END
end
