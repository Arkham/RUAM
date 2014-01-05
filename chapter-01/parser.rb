require_relative '../lib/utils'

sexp_example "simple" do
<<STR
10.times do |n|
  puts n
end
STR
end

sexp_example "sum" do
<<STR
2 + 2
STR
end

sexp_example "multiply" do
<<STR
2 + 2 * 3
STR
end
