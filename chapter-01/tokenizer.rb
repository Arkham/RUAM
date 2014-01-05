require_relative '../lib/utils'

lex_example "simple" do
<<STR
10.times do |n|
  puts n
end
STR
end

lex_example "literal" do
<<STR
10.times do |n|
  puts n/4+6
end
STR
end

lex_example "array shove" do
<<STR
array = []
10.times do |n|
  array << n if n < 5
end
STR
end

lex_example "syntax error" do
<<STR
10.times do |n
  puts n
end
STR
end

