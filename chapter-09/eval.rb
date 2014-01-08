require_relative '../lib/utils'

header "simple eval"

str = "puts"
str << " 2"
str << " +"
str << " 2"
eval(str)

header "eval access to variables is similar to a block"

a = 2
b = 3
str = "puts"
str << " a"
str << " +"
str << " b"
eval(str)

header "eval with binding is similar to lambda"

def get_binding
  a = 2
  b = 3
  binding
end

eval("puts a + b", get_binding)
