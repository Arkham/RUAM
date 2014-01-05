require_relative '../lib/utils'

disasm_example "simple class" do
<<END
class Kitten
end
END
end

disasm_example "class with getter and setter" do
<<END
class Kitten
  def attr
    @attr
  end

  def attr=(value)
    @attr = value
  end
end
END
end

disasm_example "class with attr accessor" do
<<END
class Kitten
  attr_accessor :attr
end
END
end
