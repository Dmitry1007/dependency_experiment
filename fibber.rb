require_relative 'screen_printer'
require_relative 'file_printer'

class Fibber
  attr_reader :printer

  def initialize(printer)
    @printer = printer
  end

  def print(quantity)
    fibo = [0,1]
    (quantity - 2).times do
      fibo << fibo[-1] + fibo[-2]
    end
    printer.prints(fibo)
  end
end

screen_printer = ScreenPrinter.new
fibber = Fibber.new(screen_printer)
fibber.print(10)

file_printer = FilePrinter.new("output.txt")
fibber = Fibber.new(file_printer)
fibber.print(10) 