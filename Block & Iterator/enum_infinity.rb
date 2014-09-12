
  customRandom = Enumerator.new do |yielder|
    number = 0
    count = 1
    loop do
      number += count
      count += 1
      puts yielder.class
      puts yielder
      yielder.yield number
    end
  end

  10.times {puts customRandom.next}