require_relative '../lib/utils'

header "top level scope"
p self
p Module.nesting

class Quote
  header "within Quote class"
  p self
  p Module.nesting

  class << self
    header "within Quote singleton class"
    p self
    p Module.nesting

    def singleton_class_method
      header "method defined in Quote singleton class"
      p self
      p Module.nesting
    end
  end

  def self.class_method
    header "method defined on self within Quote class"
    p self
    p Module.nesting
  end
end

Quote.singleton_class_method
Quote.class_method
