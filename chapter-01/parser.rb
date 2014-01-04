require 'ripper'
require 'pp'

def header(title)
  puts "\n= #{title} ".ljust(80, "=")
end

def rip(code)
  puts code
  puts
  pp Ripper.sexp(code)
end

def example(title)
  header(title)
  rip(yield)
end

example "simple" do
<<STR
10.times do |n|
  puts n
end
STR
end

example "sum" do
<<STR
2 + 2
STR
end

example "multiply" do
<<STR
2 + 2 * 3
STR
end
