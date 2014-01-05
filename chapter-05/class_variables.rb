require_relative '../lib/utils'

header "class instance variable"

class Person
  @type = "Person"

  def self.type
    @type
  end
end

class Programmer < Person
  @type = "Programmer"
end

# each class has its own copy
puts "Person.type = #{Person.type}"
puts "Programmer.type = #{Programmer.type}"

header "class variable"

class Person
  @@type = "Person"

  def self.type
    @@type
  end
end

class Programmer < Person
  @@type = "Programmer"
end

# same variable is used for both
puts "Person.type = #{Person.type}"
puts "Programmer.type = #{Programmer.type}"
