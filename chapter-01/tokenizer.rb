require 'ripper'
require 'pp'

def header(title)
  puts "\n= #{title} ".ljust(80, "=")
end

def rip(code)
  puts code
  puts
  pp Ripper.lex(code)
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

example "literal" do
<<STR
10.times do |n|
  puts n/4+6
end
STR
end

example "array shove" do
<<STR
array = []
10.times do |n|
  array << n if n < 5
end
STR
end

example "syntax error" do
<<STR
10.times do |n
  puts n
end
STR
end

