str = "a string"
p str.instance_variables

str.instance_variable_set("@first", "first value")
p str.instance_variables

str.instance_variable_set("@second", "second value")
p str.instance_variables

