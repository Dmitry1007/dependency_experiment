class FilePrinter
  attr_reader :file_path

  def initialize(file_path)
    @file_path = file_path
  end

  def prints(fibo)
    File.write(file_path, fibo.join(' '))
  end
end

