str = "The quick brown fox jumped over the lazy dog.\n"
/fox/.match(str)

def search(str)
  /dog/.match(str)
  puts "The value of $& inside method: #{$&}"
end
search(str)

puts "The value of $& in the top level scope: #{$&}"

2.times do
  /dog/.match(str)
  puts "The value of $& inside block: #{$&}"
end

puts "The value of $& in the top level scope: #{$&}"
