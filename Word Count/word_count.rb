class WordCount

  attr_reader :words

  def initialize(inputStr)
    @inputString = inputStr
    split_words
  end

  def split_words
    @words = @inputString.downcase.scan(/[\w']+/)
  end

  public
  def count_words
    @countArr = Hash.new(0)
    @words.each{|word|
      @countArr[word] += 1
    }
    @countArr
  end

  def get_frequency_of_top(cnt)
    sorted = @countArr.sort_by { |word, frequency| frequency}
    puts sorted.class
    puts(sorted.length)
    sorted.last(cnt)
  end

end

counter = WordCount.new("Hello to this World, You are a new World to me. ")
counter.count_words
puts counter.get_frequency_of_top(2)
