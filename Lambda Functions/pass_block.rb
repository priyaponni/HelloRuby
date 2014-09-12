def call_method(condition, action1, action2)
  if(condition)
    action1.call
  else
    action2.call
  end
end

20.times do |x|
  call_method x % 5 == 0,
           lambda {print "Bingo"},
           lambda {print " #{x}"}
end

[1..20].each do |x|
  puts x
  call_method x % 5 == 0,
              -> {print "Bingo"},
              -> {print " #{x}"}
end