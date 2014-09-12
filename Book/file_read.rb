
# class File
class File
  # static variable
  @@countOpenFiles = 0

  # static method, which creates a file, yields it & closes it
  def self.open_and_proces(*arg)
    @@countOpenFiles+=1
    puts *arg.class
    f = File.open(*arg)
    yield f
    f.close
    @@countOpenFiles -=1
  end

  # instance method, printing file path
  def instance_method
    File.basename(self.path)
  end

  # get open files count (static method)
  def self.count_open_files
    @@countOpenFiles
  end
end # class ENDS




# open a file & print its contents
File.open_and_proces("books1.csv","r") do |file|

  # 1 file open
  p " ** Open Files #{File.count_open_files}"
  p '****          ' + file.instance_method
  while line = file.gets
    puts line
  end

  # open another file, while the first file is open
  File.open_and_proces("books2.csv","r") do |file|
    p " ** Open Files #{File.count_open_files}"
    p '****          ' + file.instance_method
    while line = file.gets
      puts line
    end
  end

  # only one file is open now
  p " ** Open Files #{File.count_open_files}"

end

# all files closed
p " ** Open Files #{File.count_open_files}"