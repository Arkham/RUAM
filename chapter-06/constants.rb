require_relative '../lib/utils'

header "constant in superclass"

class MyClass
  SOME_CONSTANT = "Some value"
end

class Subclass < MyClass
  p SOME_CONSTANT
end

header "constant in parent namespace"

module Namespace
  SOME_CONSTANT = "Some value"
  class Subclass
    p SOME_CONSTANT
  end
end

header "constant resolution order"

class Superclass
  FIND_ME = "Found in Superclass"
end

module ParentLexicalScope
  FIND_ME = "Found in ParentLexicalScope"

  module ChildLexicalScope
    class Subclass < Superclass
      p FIND_ME
    end
  end
end
