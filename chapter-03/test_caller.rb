def outermost
  middleman
end

def middleman
  innermost
end

def innermost
  puts caller
end

outermost
