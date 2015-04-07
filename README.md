Experimenting with Dependencies

Read a part of Chapter 3 Practical Object Orientated Design In Ruby by Sandi Metz, pages 35 through 42 up to "Isolate Dependencies".

Then, let's do an experiment with dependency injection. Check out this usage:

screen_printer = ScreenPrinter.new

fibber = Fibber.new(screen_printer)

fibber.print(10) # => prints the first 10 numbers of the fibonacci sequence to the screen separated by a single space

file_printer = FilePrinter.new("output.txt")

fibber = Fibber.new(file_printer)

fibber.print(10) # => prints the first 10 number of the fibonacci sequence to a file named 'output.txt' separated by a single space

Build Fibber, ScreenPrinter, and FilePrinter classes to make that work.