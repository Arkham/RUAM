require_relative '../lib/utils'

header "instance_eval can access object self and surrounding scope"

class Quote
  def initialize
    @str = "The quick brown fox"
  end
end

str2 = "jumps over the lazy dog."

obj = Quote.new
obj.instance_eval do
  puts "#{@str} #{str2}"
end

header "instance_eval creates a singleton class"

puts ObjectSpace.count_objects[:T_CLASS]

obj = Quote.new
obj.instance_eval do
  def new_method
  end
end

puts ObjectSpace.count_objects[:T_CLASS]
