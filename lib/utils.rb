require 'ripper'
require 'pp'

module Utils
  def header(title)
    puts "\n= #{title} ".ljust(80, "=")
  end

  def lex(code)
    puts code
    puts
    pp Ripper.lex(code)
  end

  def sexp(code)
    puts code
    puts
    pp Ripper.sexp(code)
  end

  def disasm(code)
    puts code
    puts
    puts RubyVM::InstructionSequence.compile(code).disasm
  end

  %w( lex sexp disasm ).each do |sym|
    define_method "#{sym}_example" do |title, &block|
      header(title)
      send(sym, block.call)
    end
  end
end

include Utils
