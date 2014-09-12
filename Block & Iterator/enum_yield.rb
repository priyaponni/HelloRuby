class Array
  def doubleArray
    return to_enum(:doubleArray) unless block_given?
    each {|x| yield 2*x}
    self.collect {|x| x*2}
  end

  def tripleArray(&block)
    Enumerator.new do |yielder|
      self.each do |x|
        yielder.yield x*3 if block.call(x)
      end
    end
  end

  def manipArray(&block)
    result = []
    self.each do |x|
      result << x if yield (x)
    end
    result
  end
end

class Range
  def tripleArray(&block)
    Enumerator.new do |yielder|
      self.each do |x|
        yielder.yield x*3 if block.call(x)
      end
    end
  end
end

class Enumerator
  def tripleArray(&block)
    Enumerator.new do |yielder|
    result = []
      self.each do |x|
        yielder.yield x if block.call(x)
      end
    end
  end


end

def Enumberable
  def reverse_cycle
    puts "Inside reverse cycle"

    Enumerator.new do |yielder|
    puts "Enumerator "
    #cycletimes.times do |turn|
    # puts "Cycle Time #{turn}"
    i = self.size - 1
    self.size.times do |x|
      print "#{x}"
      yield self[i]
      i-=1
    end
    end
    #end
  end
end

p [1,2,3].doubleArray {|x| puts x}

p [1,2,3,4,5,6,7,8].manipArray {|x| x > 3}

#p [1...100].tripleArray {|x| x%5 == 0}.first(5)

p (1...100).to_enum.tripleArray {|x| x % 10 == 0}
           .first(20)

[1,2,3].to_enum.reverse_cycle {|i| print " #{i}"}
puts