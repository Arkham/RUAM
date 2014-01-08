require_relative '../lib/utils'

header "usind define_method"

class Quote
  def initialize
    @str = "The quick brown fox jumps over the lazy dog"
  end

  define_method :display do
    puts @str
  end
end

Quote.new.display

header "using define_method as closure"

class Quote
  def initialize
    @str = "The quick brown fox"
  end
end

def create_method_using_a_closure
  str2 = "jumps over the lazy dog"
  Quote.send(:define_method, :display) do
    puts "#{@str} #{str2}"
  end
end

create_method_using_a_closure
Quote.new.display

header "using a lambda to define a method"

class Quote
  def initialize
    @str = "The quick brown fox"
  end
end

def create_method_using_lambda
  str2 = "jumps over the lazy dog"
  -> {
    puts "#{@str} #{str2}"
  }
end

Quote.send(:define_method, :display, create_method_using_lambda)
Quote.new.display
