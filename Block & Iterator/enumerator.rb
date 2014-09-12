class Enumerator
  def initialize
    result = "Dharshni".to_enum(:each_char)
    puts result.inspect
    puts result.class
    result.each {|x, index| puts "#{x} -- #{index}"}
    result.each_with_index {|x, index| puts "#{x} -- #{index}"}
    result.to_a.each_with_index {|x, index| puts "*** #{x} -- #{index}"}
    puts result.to_a
  end
end

enObj = Enumerator.new