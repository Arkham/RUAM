require_relative '../lib/utils'

header "lambda call"

def message_function
  str = "The quick brown fox"

  -> (animal) {
    puts "#{str} jumps over the lazy #{animal}"
  }
end

function_value = message_function
function_value.("dog")

header "EP points to heap after creating lambda"

def message_function
  str = "The quick brown fox"

  fn = -> (animal) {
    puts "#{str} jumps over the lazy #{animal}"
  }

  str = "The sly brown fox"

  fn
end

message_function.("dog")

header "two lambdas in the same scope use the same EP on the heap"

def rollercoaster
  i = 0
  increment_function = -> {
    puts "Incrementing from #{i} to #{i+1}"
    i += 1
  }

  decrement_function = -> {
    puts "Decrementing from #{i} to #{i-1}"
    i -= 1
  }

  increment_function.call
  decrement_function.call
  increment_function.call
  increment_function.call
  decrement_function.call
end

rollercoaster
