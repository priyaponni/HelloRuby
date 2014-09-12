
module Enumerable

  # custom enumerator method
  def my_each

    # instantiate a new enum & yield values as needed
    Enumerator.new do |yielder|
      i=0
      self.each do |e|
        yielder.yield e,i
        i+=1
      end
    end
  end

  def my_each_with_index
    self.my_each.each { |e, i| yield e,i }
  end
end

# use enum through another method
[1,2,3].my_each_with_index { |e,i|
  print "#{i} -- #{e}; "
}

# use enum directly
[1,2,3].my_each.each { |e,i|
  print "#{i} -- #{e}; "
}

# convert to array and print
newArr = ['cat','rat','mat'].my_each.to_a
puts newArr.length
newArr.each_with_index {|x,i|
  puts x
  puts i
  puts '----'
}