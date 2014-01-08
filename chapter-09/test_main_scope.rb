def spam
  puts "I am spam"
end

class Person
  def talk
    spam
  end
end

person = Person.new
person.talk
person.send :spam
