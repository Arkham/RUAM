require_relative '../lib/utils'

module Professor
  def lectures; end
end

class Mathematician
  attr_accessor :first_name
  attr_accessor :last_name

  include Professor
end

fermat = Mathematician.new
fermat.first_name = "Pierre"
fermat.last_name = "de Fermat"

header "original methods"
p fermat.methods.sort

module Professor
  def primary_classroom; end
end

header "object sees methods added to module after its creation"
p fermat.methods.sort

module Employee
  def hire_date; end
end

module Professor
  include Employee
end

header "object doesn't see modules newly included in its modules"
p fermat.methods.grep(/hire_date/)
