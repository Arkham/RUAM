module Professor
  def name
    "Prof #{super}"
  end
end

class Mathematician
  attr_accessor :name
  prepend Professor
end

poincarè = Mathematician.new
poincarè.name = "Poincarè"
p poincarè.name
